import 'package:day3/screens/home.dart';
import 'package:day3/utils/MyRoutes.dart';
import "package:flutter/material.dart";
import 'screens/login.dart';

void main() {
  runApp(MyApp());
}

// Day5 Task: SingleChildScrollView,Navigator,Separate Routes File
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home(),
      themeMode: ThemeMode.light,
      // theme Data for dark theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // theme Data for light theme
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: "/login",
      routes: {
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.loginRoute: (context) => Login(),
      },
    );
  }
}
