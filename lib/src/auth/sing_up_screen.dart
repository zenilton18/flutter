import 'package:app_1/src/config/custom_colors.dart';
import 'package:flutter/material.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Customcolors.customSwatchColor,
      body: Column(
        children: [
          //parte de cima da tela de cadastro 
         const  Expanded(
            child: Center(
              child: Text(
                'Cadastro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
            ),
          ),

          Container(
            
          ),
        ],
      ),
    );
  }
}
