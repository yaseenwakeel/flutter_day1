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
            child: Column(
              children: [
                Image.asset('images/login_img.png'),
                Text(
                  'Login',
                  style: GoogleFonts.lato(
                      textStyle:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                  textScaleFactor: 2.0,
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    labelText: "Email",
                    hintStyle: TextStyle(
                      // fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                  ),
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
