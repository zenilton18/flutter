import 'package:app_1/src/config/custom_colors.dart';
import 'package:app_1/src/config/items_carrinho.dart';
import 'package:app_1/src/pages/common_widget/quantity_widget.dart';
import 'package:app_1/src/services/utils_services.dart';
import 'package:flutter/material.dart';

import '../../../models/item_model.dart';

class CardTile extends StatefulWidget {
  final ItemCarrinho cartItem;
  final Function(ItemModel) remove;
  const CardTile({Key? key, required this.cartItem, required this.remove})
      : super(key: key);

  @override
  State<CardTile> createState() => _CardTileState();
}

class _CardTileState extends State<CardTile> {
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        //imagem
        leading: Image.asset(
          widget.cartItem.item.imgUrl,
          height: 60,
          width: 60,
        ),

        //titulo
        title: Text(
          widget.cartItem.item.itemName,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),

        //total
        subtitle: Text(
          utilsServices.princeToCurrency(widget.cartItem.totalprice()),
          style: TextStyle(
              color: Customcolors.customSwatchColor,
              fontWeight: FontWeight.bold),
        ),

        //quantidade
        trailing: QuantityWidget(
          tipo: widget.cartItem.item.unit,
          value: widget.cartItem.quantidade,
          resultado: (quati) {
            setState(() {
              widget.cartItem.quantidade = quati;
              if (quati == 0) {
                widget.remove(widget.cartItem);
              }
            });
          },
          remover: true,
        ),
      ),
    );
  }
}
