import 'package:app_2/controller.dart';
import 'package:app_2/homePg.dart';
import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: controller(
        child: Homepage(),
      ),
    );
  }
}