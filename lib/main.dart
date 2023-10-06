import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppstate createState() => _MyAppstate();
}

class _MyAppstate extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exemplo scafold"),
        ),
        body: Row( //collumn
          mainAxisAlignment: MainAxisAlignment.center, //alinhamento
          children: [
            Center(
              child: Text('Meu applicativo', 
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
              child: Text('linha 2', 
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
              child: Text('linha 3', 
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ));
  }

} 