import 'package:day3/screens/home.dart';
import "package:flutter/material.dart";
import 'screens/login.dart';

void main() {
  runApp(MyApp());
}

// Day3 Task: Functions,Themes,classes,Routes
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
        primarySwatch: Colors.red,
      ),
      // initialRoute: "/login",
      routes: {
        '/': (context) => Home(),
        "/login": (context) => Login(),
      },
    );
  }
}
