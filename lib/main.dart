import 'package:app_1/src/pages/auth/sing_in_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "meu app",
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white.withAlpha(190),
      ),
      home: const SingInScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
