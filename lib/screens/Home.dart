import 'package:flutter/material.dart';

void main(){
  runApp(Home());
}

class Home extends StatelessWidget{

  int days=40;
  double temperature=30.4;
  String name="Ali";
  bool isMen=true;
  // static const pi=3.14; //only static field can be declared as constant
  var x="abc";

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('AppBar Title')),
      body: Center(
        child: Container(
          child: Text('Wlecome to $days days of flutter \n temperature: $temperature \n Your Name:$name \n Gender(men):'
              '$isMen \n variable $x')
        )
      ),
      drawer: Drawer()
    );
  }
}
