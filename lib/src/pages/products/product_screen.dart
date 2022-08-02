import 'package:flutter/material.dart';

import '../../models/item_model.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key, required this.items}) : super(key: key);

  final ItemModel items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(items.imgUrl),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade600, offset: const Offset(0, 2)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
