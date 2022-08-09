import 'package:app_1/src/config/custom_colors.dart';
import 'package:app_1/src/pages/carrinho/componentes/card.dart';
import 'package:app_1/src/services/utils_services.dart';
import 'package:flutter/material.dart';
import 'package:app_1/src/config/app_data.dart' as carrinho;

class Carrinho extends StatelessWidget {
  Carrinho({Key? key}) : super(key: key);

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('carrinho'),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: carrinho.itemscarrinho.length,
              itemBuilder: (_, index) {
                return CardTile(cartItem: carrinho.itemscarrinho[index]);
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: 153,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 3,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Total Geral',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  utilsServices.princeToCurrency(50.4),
                  style: TextStyle(
                      fontSize: 26, color: Customcolors.customSwatchColor),
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Customcolors.customSwatchColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Realizar Pedido',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
