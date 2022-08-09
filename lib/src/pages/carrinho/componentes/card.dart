import 'package:app_1/src/config/items_carrinho.dart';
import 'package:flutter/material.dart';

import '../../../models/item_model.dart';

class CardTile extends StatelessWidget {
  final ItemCarrinho cartItem;
  const CardTile({Key? key, required this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //imagem
        leading: Image.asset(
          cartItem.item.imgUrl,
          height: 60,
          width: 60,
        ),

        //titulo

        //total

        //quantidade
      ),
    );
  }
}
