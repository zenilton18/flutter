// ignore_for_file: unused_element

import 'package:flutter/material.dart';

/*class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controle = context.dependOnInheritedWidgetOfExactType<controller>()!;
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body:  Center(
        child: Text('deissssso ${controle.val}' ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print("clicou");
        },
      ),
    );
  }
}
*/
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Center(
        child: Text('deissssso ss$cont '),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            cont++;
          });
        },
      ),
    );
  }
}
