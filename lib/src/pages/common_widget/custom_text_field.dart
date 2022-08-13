import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustumTextField extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;
  final List<TextInputFormatter>? inputFormatters;
  final String? valorinicial;
  final bool ler;
  const CustumTextField({
    Key? key,
    required this.icon,
    required this.label,
    this.valorinicial,
    this.isSecret = false,
    this.inputFormatters,
    this.ler = false,
  }) : super(key: key);

  @override
  State<CustumTextField> createState() => _CustumTextFieldState();
}

class _CustumTextFieldState extends State<CustumTextField> {
  bool isObscure = false;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        initialValue: widget.valorinicial,
        readOnly: widget.ler,
        inputFormatters: widget.inputFormatters,
        obscureText: isObscure,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon),
          suffixIcon: widget.isSecret
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon:
                      Icon(isObscure ? Icons.visibility : Icons.visibility_off),
                )
              : null,
          labelText: widget.label,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
