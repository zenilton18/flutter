import 'package:app_1/src/config/app_data.dart';
import 'package:app_1/src/config/custom_colors.dart';
import 'package:app_1/src/config/items_carrinho.dart';
import 'package:app_1/src/pages/common_widget/quantity_widget.dart';
import 'package:app_1/src/services/utils_services.dart';
import 'package:flutter/material.dart';

import '../../../models/item_model.dart';

class CardTile extends StatelessWidget {
  final ItemCarrinho cartItem;
  CardTile({Key? key, required this.cartItem}) : super(key: key);

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        //imagem
        leading: Image.asset(
          cartItem.item.imgUrl,
          height: 60,
          width: 60,
        ),

        //titulo
        title: Text(
          cartItem.item.itemName,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),

        //total
        subtitle: Text(
          utilsServices.princeToCurrency(cartItem.totalprice()),
          style: TextStyle(
              color: Customcolors.customSwatchColor,
              fontWeight: FontWeight.bold),
        ),

        //quantidade
        trailing: QuantityWidget(
          tipo: cartItem.item.unit,
          value: cartItem.quantidade,
          resultado: (quati) {},
          remover: true,
        ),
      ),
    );
  }
}
