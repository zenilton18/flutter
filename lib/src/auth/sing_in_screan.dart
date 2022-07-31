import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'components/coustom_text_field.dart';

class SingInScrean extends StatelessWidget {
  const SingInScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  //nome do app 
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 40
                      ),
                      children: [
                        TextSpan(
                          text: 'Green',
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                          ),
                        ),
                        TextSpan(
                          text: 'grocer',
                          style: TextStyle(
                            color: Colors.red,

                          ),
                        ),
                      ]
                    ),
                  ),
                 //categoria 
                  SizedBox(
                    height: 30,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 25
                      ),

                      child: AnimatedTextKit(
                        pause: Duration.zero,
                        repeatForever: true,
                        animatedTexts: [
                        FadeAnimatedText('frutas'),
                        FadeAnimatedText('Legumes'),
                        FadeAnimatedText('Verduras'),
                        FadeAnimatedText('Carnes'),
                        FadeAnimatedText('Cerais'),
                        FadeAnimatedText('Laticíneos'),
                    
                      ],
                                     ),
                    ),
                  ),
                ],
              ),
            ),
            //formulario
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 40,
              ),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(45))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //email
                  const CostumTextField(
                    icon: Icons.email,
                    label: 'Email',
                  ),
                  //senha
                  const CostumTextField(
                    icon: Icons.lock,
                    label: 'Senha',
                    isSecret: true,
                  ),
                  //  botão entrar
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Entrar',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  // esqueceu senha
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Esqueceu a senha? ',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),

                  // divisor
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text('Ou'),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //novo usuario
                  SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        side: const BorderSide(width: 2, color: Colors.green),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Criar Conta",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
