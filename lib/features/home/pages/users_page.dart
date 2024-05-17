import 'package:ecpf/core/converter/date_converter/date_converter.dart';
import 'package:ecpf/core/users/users.dart';
import 'package:flutter/material.dart';

import '../../../core/users/models/users_model.dart';
import 'users_detail_page.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({Key? key}) : super(key: key);

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<User> users = Users().users;

  @override
  void initState() {
    super.initState();
  }

  int _currentPage = 0;
  final int _itemsPerPage = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cidadãos'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: _currentPage < ((users.length / _itemsPerPage).ceil() - 1)
                  ? _itemsPerPage
                  : users.length - (_currentPage * _itemsPerPage), // Evita quebra na última página
              itemBuilder: (context, index) {
                final user = users[index + (_currentPage * _itemsPerPage)];
                return UserItem(user: user);
              },
              separatorBuilder: (context, index) => const Divider(
                height: 1,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: _currentPage > 0
                      ? () {
                          setState(() {
                            _currentPage--;
                          });
                        }
                      : null,
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                const SizedBox(width: 16),
                Text(
                  'Página ${_currentPage + 1} de ${((users.length / _itemsPerPage).ceil())}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(width: 16),
                IconButton(
                  onPressed: _currentPage < ((users.length / _itemsPerPage).ceil() - 1)
                      ? () {
                          setState(() {
                            _currentPage++;
                          });
                        }
                      : null,
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UserItem extends StatelessWidget {
  final User user;

  const UserItem({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Row(
        children: [
          // Foto
          CircleAvatar(
            radius: 30, // Adjust the radius as needed
            backgroundColor: Colors.grey[300], // Optional background color
            child: Icon(
              Icons.person, // Replace with your desired icon
              size: 30, // Adjust the icon size as needed
              color: Colors.black, // Optional icon color
            ),
          ),
          const SizedBox(width: 16),
          // Informações do usuário
          Expanded(
            child: Row(
              children: [
                // Nome
                Expanded(
                  child: Text(
                    user.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                // Documento
                Expanded(
                  child: Text(user.document),
                ),
                const SizedBox(width: 16),
                // Sexo
                Expanded(
                  child: Text(user.gender),
                ),
                const SizedBox(width: 16),
                // Data de Nascimento
                Expanded(
                  child: Text(DateConverter().convertDateTimeToString(user.birthdate)),
                ),
                const SizedBox(width: 16),
                // Endereço
                Expanded(
                  child: Text(user.address),
                ),
                const SizedBox(width: 16),
                // Botão de Detalhes
                ElevatedButton(
                  onPressed: () {
                    // Navegar para a tela de detalhes do usuário
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetailScreen(user: user),
                      ),
                    );
                  },
                  child: const Text('Detalhes'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
