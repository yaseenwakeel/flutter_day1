import 'package:day3/utils/MyRoutes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool buttonClicked = false;
  final _formkey = GlobalKey<FormState>();

  goToHome() async {
    if (_formkey.currentState!.validate()) {
      // set state for refresh screen to show animation
      setState(() {
        buttonClicked = true;
      });
      // wait 1 sec until animation end
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        buttonClicked = false;
      });
    }
  }

  Widget build(BuildContext context) {
    return Material(
      // color: Colors.white,
      child: Center(
        child: Container(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Image.asset('assets/images/login_img.png'),
                    Text(
                      'Welcome $name',
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
                        hintText: "Enter UserName",
                        labelText: "UserName",
                        hintStyle: TextStyle(
                          // fontSize: 45,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'username cannot be empty';
                        }
                      },
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
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "Enter Password";
                        }
                        if (value != null && value.length < 8) {
                          return "password length should be greater than 8";
                        }
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // InkWell for making container clickable
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(buttonClicked ? 50 : 8),
                      child: InkWell(
                        // InkWell make container clickable
                        // splashColor: Colors.green,
                        onTap: () => goToHome()
                        /*   () async {
                          buttonClicked = true;
                          // set state for refresh screen to show animation
                          setState(() {});
                          // wait 1 sec until animation end
                          await Future.delayed(Duration(seconds: 1));
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        }*/
                        ,
                        child: AnimatedContainer(
                          width: buttonClicked ? 40 : 75,
                          height: 45,
                          duration: Duration(seconds: 1),
                          alignment: Alignment.center,
                          child: buttonClicked
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                          // decoration: BoxDecoration(
                          //   shape: buttonClicked
                          //       ? BoxShape.circle
                          //       : BoxShape.rectangle,
                          //   color: Colors.red,
                          //   //Never use borderRadius with shape
                          //   // borderRadius:
                          //   //     BorderRadius.circular(buttonClicked ? 50 : 8),
                          // ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
