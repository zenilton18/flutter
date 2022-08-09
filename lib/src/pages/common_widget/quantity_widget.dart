import 'package:app_1/src/config/custom_colors.dart';
import 'package:flutter/material.dart';

class QuantityWidget extends StatelessWidget {
  final int value;
  final String tipo;
  final Function(int quantidade) resultado;

  final bool remover;

  const QuantityWidget({
    Key? key,
    required this.tipo,
    required this.value,
    required this.resultado,
    this.remover = false,
  }) : super(key: key);

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
          _QuantityButton(
            color: Colors.grey,
            icon: !remover ? Icons.remove : Icons.delete_forever,
            voidCallback: () {
              if (value == 1) return;
              int count = value - 1;
              resultado(count);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Text(
              '$value$tipo',
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          _QuantityButton(
            color: Customcolors.customSwatchColor,
            icon: Icons.add,
            voidCallback: () {
              int count = value + 1;
              resultado(count);
            },
          ),
        ],
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final VoidCallback voidCallback;
  const _QuantityButton(
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
