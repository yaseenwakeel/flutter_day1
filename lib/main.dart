import 'package:flutter/material.dart';

import 'screens/Home.dart';
//Day2 goal: Dart Data Types and Scaffold
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home()
    );
  }
}
