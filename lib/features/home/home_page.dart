import 'package:ecpf/core/services/page_namer.dart';
import 'package:ecpf/features/home/pages/dashboard_page.dart';
import 'package:ecpf/features/home/pages/report_page.dart';
import 'package:ecpf/features/home/pages/users_page.dart';
import 'package:ecpf/features/widgets/background.dart';
import 'package:ecpf/features/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageNamer = Modular.get<PageNamer>();

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    // Replace these with your actual screens
    DashboardPage(),
    UserListScreen(),
    ReportPage()
  ];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      pageNamer.setPageTitle("HomePage", context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<MenuItemContainer> menuItems = [
      MenuItemContainer(
        title: 'Home',
        icon: Icons.home,
        onTap: () {
          setState(() {
            _selectedIndex = 0;
          });
        },
      ),
      MenuItemContainer(
        title: 'Cidadãos',
        icon: Icons.people,
        onTap: () {
          setState(() {
            _selectedIndex = 1;
          });
        },
      ),
      MenuItemContainer(
        title: 'Relatórios',
        icon: Icons.edit_document,
        onTap: () {
          setState(() {
            _selectedIndex = 2;
          });
        },
      ),
    ];
    return Background(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Responsive(
            mobile: SizedBox.shrink(),
            desktop: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Side Menu Bar
                  SizedBox(
                    width: 250,
                    child: Column(
                      children: [
                        SizedBox(height: 100, width: 100, child: SvgPicture.asset("assets/images/Logo_estado.svg")),
                        Expanded(
                          child: ListView.builder(
                            itemCount: menuItems.length,
                            itemBuilder: (context, index) {
                              return menuItems[index];
                            },
                          ),
                        ),

                        // Footer
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // User details
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    // Replace with user's profile image
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'John Doe', // Replace with user's name
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      Text('john.doe@example.com'), // Replace with user's email
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),

                              // Logout button
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Implement logout functionality
                                  },
                                  child: const Text('Logout'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Content Area
                  Expanded(
                    child: _screens[_selectedIndex],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class MenuItemContainer extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const MenuItemContainer({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24,
              color: Colors.grey,
            ),
            const SizedBox(width: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
