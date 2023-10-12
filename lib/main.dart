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
                Text('número',style: TextStyle(fontSize: 46),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('AC',style: TextStyle(fontSize: 36),),
                Text(''),
                Text(''),
                Text('<x',style: TextStyle(fontSize: 36),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('7',style: TextStyle(fontSize: 36),),
                Text('8',style: TextStyle(fontSize: 36),),
                Text('9',style: TextStyle(fontSize: 36),),
                Text('/',style: TextStyle(fontSize: 36),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('4',style: TextStyle(fontSize: 36),),
                Text('5',style: TextStyle(fontSize: 36),),
                Text('6',style: TextStyle(fontSize: 36),),
                Text('x',style: TextStyle(fontSize: 36),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('1',style: TextStyle(fontSize: 36),),
                Text('2',style: TextStyle(fontSize: 36),),
                Text('3', style: TextStyle(fontSize: 36),),
                Text('-',style: TextStyle(fontSize: 36),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('0',style: TextStyle(fontSize: 36),),
                Text(',',style: TextStyle(fontSize: 36),),
                Text('=',style: TextStyle(fontSize: 36),),
                Text('+',style: TextStyle(fontSize: 36),),
              ],
            ),
            Text('col 3',style: TextStyle(fontSize: 36),),
            Text('col 4',style: TextStyle(fontSize: 36),),
            Text('col 5',style: TextStyle(fontSize: 36),),
            Text('col 6',style: TextStyle(fontSize: 36),),
          ],
        ),
      ),
    );
  }
}
 