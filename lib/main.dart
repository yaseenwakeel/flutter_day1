import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My First app in 30Day Course',
        home: Material(
          child: Center(
              child: Container(
                color: Colors.green,
                child: Text('Hello World',
                style: TextStyle(decoration: TextDecoration.none)),
          )),
        ));
  }
}
