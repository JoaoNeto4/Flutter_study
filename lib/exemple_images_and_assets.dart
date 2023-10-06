import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  final String nome;

  const MyApp({Key? key, this.nome=''}) : super(key: key);

  @override
  _MyAppstate createState() => _MyAppstate();
}

class _MyAppstate extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
        home: Scaffold(
          appBar: AppBar( 
            title: Text('Imagens'),
          ),
          body: Image.asset('assets/image/dog.jpg', 
            //width: 200,
            //height: 150,  
            fit: BoxFit.cover,
            width: double.infinity, //for fullscreen
            height: double.infinity, //for fullscreen
          ),
        ),
      );
  }

}