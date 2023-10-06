import 'package:flutter/material.dart';

void main() {
  int valor = 10;
  runApp(MyApp(title: 'Aplicativo Olá Mundo', valor: valor));
  valor++;
}

class MyApp extends StatelessWidget {
  final String title;
  final int valor;

  const MyApp({Key? key, this.title='', this.valor=0}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Center(
          child: Text(
            'Olá mundo, valor é '+ this.valor.toString(),
            style: TextStyle(fontSize: 50, color: Colors.black),
          )),
      ),
    );
  }
}

