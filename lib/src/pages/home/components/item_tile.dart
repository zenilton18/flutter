import 'package:app_1/src/config/custom_colors.dart';
import 'package:app_1/src/models/item_model.dart';
import 'package:app_1/src/pages/products/product_screen.dart';
import 'package:app_1/src/services/utils_services.dart';
import 'package:flutter/material.dart';

class Itemtile extends StatelessWidget {
  final ItemModel item;
  Itemtile({Key? key, required this.item}) : super(key: key);

  final UtilsServices utilsService = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (c) {
                  return ProductScreen(
                    items: item,
                  );
                },
              ),
            );
          },
          child: Card(
            elevation: 1,
            shadowColor: Colors.grey.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //imagem

                  Expanded(child: Image.asset(item.imgUrl)),

                  //nome
                  Text(
                    item.itemName,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),

                  //preço
                  Row(
                    children: [
                      Text(
                        utilsService.princeToCurrency(item.price),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Customcolors.customSwatchColor,
                        ),
                      ),
                      Text(
                        '/${item.unit}',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),

        //botão add carrinho
        Positioned(
          top: 4,
          right: 4,
          child: GestureDetector(
            onTap: () {
              print('clicou');
            },
            child: Container(
              width: 35,
              height: 40,
              decoration: BoxDecoration(
                color: Customcolors.customSwatchColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(20),
                ),
              ),
              child: const Icon(
                Icons.add_shopping_cart_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
