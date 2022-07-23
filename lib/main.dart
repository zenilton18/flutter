import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "contador de  Pessoas ",
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            "pessoas  : 0 ",
          ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             FlatButton(
               child: Text(
                 "+1",
                 style: TextStyle(fontSize: 40.0, color: Colors.white),
               ),
               onPressed: ()=>{},
             ),oiekffk sldsanfsabdalnkdlas
             FlatButton(
               child: Text(
                 "-1",
                 style: TextStyle(fontSize: 40.0, color: Colors.white),
               ),
               onPressed: ()=>{},
             ),
           ]

         ),
          Text(
            "Pode Entrar!",
            style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
          ),
        ],
      )));
}
