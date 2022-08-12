import 'package:app_1/src/pages/common_widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:app_1/src/config/app_data.dart' as appdatag;

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do Usuario'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: const [
          CustumTextField(icon: Icons.email, label: 'Email'),
          CustumTextField(icon: Icons.person, label: 'Nome'),
          CustumTextField(icon: Icons.phone, label: 'Celular'),
          CustumTextField(
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),
          CustumTextField(icon: Icons.email, label: 'Email'),
        ],
      ),
    );
  }
}
