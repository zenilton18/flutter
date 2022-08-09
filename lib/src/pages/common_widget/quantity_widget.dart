import 'package:app_1/src/config/custom_colors.dart';
import 'package:flutter/material.dart';

class QuantityWidget extends StatelessWidget {
  final int value;
  final String tipo;

  const QuantityWidget({Key? key, required this.tipo, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _QuantityWidget(
            color: Colors.grey,
            icon: Icons.remove,
            voidCallback: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Text(
              '$value$tipo',
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          _QuantityWidget(
            color: Customcolors.customSwatchColor,
            icon: Icons.add,
            voidCallback: () {},
          ),
        ],
      ),
    );
  }
}

class _QuantityWidget extends StatelessWidget {
  final Color color;
  final IconData icon;
  final VoidCallback voidCallback;
  const _QuantityWidget(
      {Key? key,
      required this.color,
      required this.icon,
      required this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: voidCallback,
        child: Ink(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
    );
  }
}
