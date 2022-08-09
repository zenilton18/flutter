import 'package:app_1/src/config/custom_colors.dart';
import 'package:app_1/src/pages/common_widget/quantity_widget.dart';
import 'package:app_1/src/services/utils_services.dart';
import 'package:flutter/material.dart';

import '../../models/item_model.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({Key? key, required this.items}) : super(key: key);

  final ItemModel items;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final UtilsServices utilsServices = UtilsServices();

  int cartItemQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: Stack(
        children: [
          Column(
            children: [
              //imagem
              Hero(
                tag: widget.items.imgUrl,
                child: Expanded(
                  child: Image.asset(widget.items.imgUrl),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      //nome
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.items.itemName,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          QuantityWidget(
                            value: cartItemQuantity,
                            tipo: widget.items.unit,
                            resultado: (quantidade) {
                              setState(() {
                                cartItemQuantity = quantidade;
                              });
                            },
                          ),
                        ],
                      ),

                      //preço
                      Text(
                        utilsServices.princeToCurrency(widget.items.price),
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Customcolors.customSwatchColor),
                      ),

                      //descricao

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SingleChildScrollView(
                            child: Text(
                              widget.items.description * 10,
                              style: const TextStyle(
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),

                      //botão
                      SizedBox(
                        height: 55,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {},
                          label: const Text(
                            'Add Carrinho ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          icon: const Icon(Icons.shopping_cart_outlined,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              left: 10,
              top: 10,
              child: SafeArea(
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: Colors.black,
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ))
        ],
      ),
    );
  }
}
