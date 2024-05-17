import 'package:flutter/material.dart';
import 'package:ecpf/core/users/models/users_model.dart';
import 'package:intl/intl.dart';

class UserInformationPage extends StatefulWidget {
  final User user;

  const UserInformationPage({Key? key, required this.user}) : super(key: key);

  @override
  State<UserInformationPage> createState() => _UserInformationPageState();
}

class _UserInformationPageState extends State<UserInformationPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _documentController;
  late TextEditingController _genderController;
  late TextEditingController _birthdateController;
  late TextEditingController _addressController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.user.name);
    _documentController = TextEditingController(text: widget.user.document);
    _genderController = TextEditingController(text: widget.user.gender);
    _birthdateController = TextEditingController(text: DateFormat('dd/MM/yyyy').format(widget.user.birthdate));
    _addressController = TextEditingController(text: widget.user.address);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _documentController.dispose();
    _genderController.dispose();
    _birthdateController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Centraliza os campos
          children: [
            // Nome
            SizedBox(
              width: 300, // Define a largura máxima dos campos
              child: TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Borda arredondada
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o nome';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 16),
            // Documento
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: _documentController,
                decoration: InputDecoration(
                  labelText: 'CPF',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Borda arredondada
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o CPF';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 16),
            // Sexo
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: _genderController,
                decoration: InputDecoration(
                  labelText: 'Sexo',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Borda arredondada
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o sexo';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 16),
            // Data de Nascimento
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: _birthdateController,
                decoration: InputDecoration(
                  labelText: 'Data de Nascimento',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Borda arredondada
                  ),
                ),
                keyboardType: TextInputType.datetime,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira a data de nascimento';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 16),
            // Endereço
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: _addressController,
                decoration: InputDecoration(
                  labelText: 'Endereço',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Borda arredondada
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o endereço';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 32),
            // Botão de Salvar
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Processo de atualização do usuário
                    // ... (salve os dados atualizados no backend)
                  }
                },
                child: const Text('Salvar Alterações'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
