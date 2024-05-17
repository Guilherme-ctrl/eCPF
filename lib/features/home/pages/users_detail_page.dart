import 'package:ecpf/features/home/pages/user_information_page.dart';
import 'package:flutter/material.dart';
import 'package:ecpf/core/users/models/users_model.dart';

class UserDetailScreen extends StatefulWidget {
  final User user;

  const UserDetailScreen({super.key, required this.user});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user.name),
      ),
      body: Column(
        children: [
          // User Information
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Foto
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(widget.user.imageUrl),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.user.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text('CPF: ${widget.user.document}'),
                  ],
                ),
              ],
            ),
          ),
          // TabBar (Centralized with Max Width)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              width: 400, // Set max width of TabBar
              child: Align(
                alignment: Alignment.center,
                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.blue,
                  dividerColor: Colors.transparent,
                  indicator: null,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(text: 'Informações'),
                    Tab(text: 'Medicamentos'),
                  ],
                ),
              ),
            ),
          ),
          // TabBarView
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Informações Tab
                UserInformationPage(user: widget.user),
                // Medicamentos Tab
                MedicamentosTab(
                  user: widget.user,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MedicamentosTab extends StatelessWidget {
  final User user;
  const MedicamentosTab({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.topCenter,
        // Centraliza a tabela
        child: SizedBox(
          width: 600, // Define a largura máxima da tabela
          child: SingleChildScrollView(
            child: DataTable(
              dataRowColor: MaterialStateProperty.all(Colors.transparent), // Remove row dividers
              dividerThickness: 0, // Remove column dividers
              columnSpacing: 16, // Espaçamento entre as colunas
              columns: const [
                DataColumn(label: Text('Exames')),
                DataColumn(label: Text('Dosagem')),
                DataColumn(label: Text('Frequência')),
                DataColumn(label: Text('Período')),
                DataColumn(label: Text('Ações')),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text(user.medication.name)),
                    DataCell(Text(user.medication.dosage)),
                    DataCell(Text('8/8h')),
                    DataCell(Text('7 dias')),
                    DataCell(
                      TextButton(
                        onPressed: () {
                          // Implementar ação de edição
                        },
                        child: const Text('Editar'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
