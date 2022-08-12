import 'package:app_1/src/config/custom_colors.dart';
import 'package:app_1/src/config/items_carrinho.dart';
import 'package:app_1/src/models/item_model.dart';
import 'package:app_1/src/pages/carrinho/componentes/card.dart';
import 'package:app_1/src/services/utils_services.dart';
import 'package:flutter/material.dart';
import 'package:app_1/src/config/app_data.dart' as carrinho;

class Carrinho extends StatefulWidget {
  const Carrinho({Key? key}) : super(key: key);

  @override
  State<Carrinho> createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  final UtilsServices utilsServices = UtilsServices();

  void removerItem(ItemCarrinho cartItem) {
    setState(() {
      carrinho.itemscarrinho.remove(cartItem);
    });
  }

  double carrinhoTotal() {
    double total = 0;
    for (var item in carrinho.itemscarrinho) {
      total += item.totalprice();
    }
    return total;
  }

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
                return CardTile(
                    cartItem: carrinho.itemscarrinho[index],
                    remove: removerItem);
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
                  utilsServices.princeToCurrency(carrinhoTotal()),
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
                    onPressed: () async {
                      bool? resut = await dialago();
                      print(resut);
                    },
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

  Future<bool?> dialago() {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text('Comfirmação'),
          content: const Text('Deseja realmente concluir pedido'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('Não'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('Sim'),
            ),
          ],
        );
      },
    );
  }
}
