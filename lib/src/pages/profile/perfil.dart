import 'package:app_1/src/pages/common_widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:app_1/src/config/app_data.dart' as appdata;

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
        children: [
          CustumTextField(
              ler: true,
              valorinicial: appdata.user.email,
              icon: Icons.email,
              label: 'appdata.user.celular'),
          CustumTextField(
              ler: true,
              valorinicial: appdata.user.nome,
              icon: Icons.person,
              label: 'Nome'),
          CustumTextField(
              ler: true,
              valorinicial: appdata.user.celular,
              icon: Icons.phone,
              label: 'Celular'),
          CustumTextField(
            ler: true,
            valorinicial: appdata.user.cpf,
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),
          //atualizar senha
          SizedBox(
              height: 50,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.green,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Atualizar Senha')))
        ],
      ),
    );
  }
}
