import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Title'),
      ),
      body: Center(
        child: Container(
            child: Text(
                'Welcome to 30 days of flutter\n ${myFunction("ali", 15)}')),
      ),
      drawer: Drawer(),
    );
  }

  //  Function
  String myFunction(String name, int age) {
    return "name:$name \n age: $age";
  }
}
