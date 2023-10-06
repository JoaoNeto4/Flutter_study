import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(nome: 'João'));
}

class MyApp extends StatefulWidget {
  final String nome;

  const MyApp({Key? key, this.nome=''}) : super(key: key);

  @override
  _MyAppstate createState() => _MyAppstate();
}

class _MyAppstate extends State<MyApp> {
  int salario = 12000;

  void aumentaSalario(int valor){
    setState(() {
      
      this.salario = this.salario + valor;
      print('novo salário $salario');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap:() {
          print('Clicou');

          aumentaSalario(200);
          /*
          setState(() {
            salario = salario + 100;
          });
          print('novo salário $salario');
          */

        },
        child: Text(
          'O salário de ${widget.nome} é $salario',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
