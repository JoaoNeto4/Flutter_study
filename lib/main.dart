import 'dart:collection';

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

  String numero = '0';
  double primeiroNumero = 0.0;
  String operacao = '';

  void calcular(String tecla){
    switch(tecla){
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
        setState(() {
          numero += tecla;
          print('$numero');
        });
        break;

      case '8':
      case '9':

      case ',':
        setState(() {
          numero += tecla;

          numero = numero.replaceAll(',', '.');

          if(numero.contains('.')){
            //double numeroDouble = double.parse(numero);
            //numero = numeroDouble.toString();
          } else {
            int numeroInt = int.parse(numero);
            numero = numeroInt.toString();
          }
          numero = numero.replaceAll('.', ',');
        });
        break;

      case '+':
        operacao = tecla;
        numero = numero.replaceAll(",", '.');
        primeiroNumero = double.parse(numero);
        
        numero = numero.replaceAll(".", ',');
        numero = '0';
        break;
      
      case '=':
        double resultado = 0.0;

        if(operacao == '/'){
          if(double.parse(numero) * 1 == 0){
            print('ERRO: divição por 0');
            return;
          }
        }

        if(operacao == '+'){
          resultado = primeiroNumero + double.parse(numero);
        }

        if(operacao == '-'){
          resultado = primeiroNumero - double.parse(numero);
        }

        if(operacao == 'x'){
          resultado = primeiroNumero * double.parse(numero);
        }

        if(operacao == '/'){
          resultado = primeiroNumero / double.parse(numero);
        }

        String resultadoString = resultado.toString();

        List<String> resultadoPartes = resultadoString.split('.');

        if(int.parse(resultadoPartes[1]) * 1 == 0){
          setState(() {
            numero = int.parse(resultadoPartes[0]).toString();
          });

        }else{
          //double resultadoFormatado = resultado;
          setState(() {
            numero = resultado.toString();
          });
        }
        break;

      case '/':
        operacao = tecla;
        numero = numero.replaceAll(',', '.');
        primeiroNumero = double.parse(numero);
        numero = numero.replaceAll('.', ',');
        numero = '0';
        break;

      case '<x':
        setState(() {
          if(numero.length > 0){
            numero = numero.substring(0, numero.length -1);
          }
        });
        break;

      case 'AC':
        setState(() {
          numero = '0';
        });
        break;

      default:
        numero += tecla;
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Calculadora'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(numero, style: TextStyle(fontSize: 46),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular('AC'),
                  child: Text('AC',style: TextStyle(fontSize: 36),),
                ),
                Text(''),
                Text(''),
                GestureDetector(
                  onTap: () => calcular('<x'),
                  child: Image.asset(
                    'assets/images/arrow_back.png', 
                    width: 30,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {print('clicou');
                    calcular('7');
                  },
                  child: Text('7',style: TextStyle(fontSize: 36),),
                ),
                GestureDetector(
                  onTap: () => calcular('8'),
                  child: Text('8',style: TextStyle(fontSize: 36),),
                ),
                GestureDetector(
                  onTap: () => calcular('9'),
                  child: Text('9',style: TextStyle(fontSize: 36),),
                ),
                GestureDetector(
                  onTap: () => calcular('/'),
                  child: Text('/',style: TextStyle(fontSize: 36),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular('4'),
                  child: Text('4',style: TextStyle(fontSize: 36),),
                ),
                GestureDetector(
                  onTap: () => calcular('5'),
                  child: Text('5',style: TextStyle(fontSize: 36),),
                ),
                GestureDetector(
                  onTap: () => calcular('6'),
                  child: Text('6',style: TextStyle(fontSize: 36),),
                ),
                GestureDetector(
                  onTap: () => calcular('x'),
                  child: Text('x',style: TextStyle(fontSize: 36),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular('1'),
                  child: Text('1',style: TextStyle(fontSize: 36),),
                ),
                GestureDetector(
                  onTap: () => calcular('2'),
                  child: Text('2',style: TextStyle(fontSize: 36),),
                ),
                GestureDetector(
                  onTap: () => calcular('3'),
                  child: Text('3',style: TextStyle(fontSize: 36),),
                ),
                GestureDetector(
                  onTap: () => calcular('-'),
                  child: Text('-',style: TextStyle(fontSize: 36),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular('0'),
                  child: Text('0',style: TextStyle(fontSize: 36),),
                ),
                GestureDetector(
                  onTap: () => calcular(','),
                  child: Text(',',style: TextStyle(fontSize: 36),),
                ),
                GestureDetector(
                  onTap: () => calcular('='),
                  child: Text('=',style: TextStyle(fontSize: 36),),
                ),
                GestureDetector(
                  onTap: () => calcular('+'),
                  child: Text('+',style: TextStyle(fontSize: 36),),
                ),
              ],
            ),
            Text('col 6',style: TextStyle(fontSize: 36),),
          ],
        ),
      ),
    );
  }
}
 