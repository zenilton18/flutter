import 'package:flutter/material.dart';

class CostumTextField extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;

  const CostumTextField({
    Key? key,
    required this.icon,
    required this.label,
    this.isSecret = false,
  }) : super(key: key);

  @override
  State<CostumTextField> createState() => _CostumTextFieldState();
}

class _CostumTextFieldState extends State<CostumTextField> {
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
                  icon:  Icon( isObscure?  Icons.visibility: Icons.visibility_off),
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
