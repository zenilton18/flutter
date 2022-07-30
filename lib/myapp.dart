import 'package:app_1/homePg.dart';
import 'package:flutter/material.dart';

import 'homePg.dart';

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}
