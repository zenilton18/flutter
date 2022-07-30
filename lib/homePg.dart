import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final controle = TextEditingController();
  final lista = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/img/teste.jpg',
              fit: BoxFit.cover,
            ),
           

          ),
           Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: controle,
                )),
                IconButton(
                    onPressed: () {
                      final texto = controle.text;
                      setState(() {
                        lista.add(texto);
                      });
                      controle.clear();
                    },
                    icon: Icon(Icons.add))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: lista.length,
                itemBuilder: (context, index) {
                  final list = lista[index];
                  return ListTile(
                    title: Text(list),
                  );
                }),
          ),
        ]),],
      ),
    );
  }
}
