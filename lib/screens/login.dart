import 'package:day3/utils/MyRoutes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset('assets/images/login_img.png'),
                  Text(
                    'Login',
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    textScaleFactor: 1.0,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      labelText: "Email",
                      hintStyle: TextStyle(
                        // fontSize: 45,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    child: Text(
                      "Login",
                    ),
                    style: TextButton.styleFrom(maximumSize: Size(150.0, 40.0)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
