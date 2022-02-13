import 'package:day3/screens/home.dart';
import "package:flutter/material.dart";
import 'screens/login.dart';


void main() {
  runApp(MyApp());
}

// Day4 Task: Adding image from Asset,Google Fonts,ElevatedButton,Login Screen Design
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
        '/': (context) => Home(),
        "/login": (context) => Login(),
      },
    );
  }
}
