import 'package:flutter/material.dart';
import 'package:sampah_project/Screens/Nav/nav_screen.dart';
import 'package:sampah_project/Screens/Signup/signup.dart';
import 'package:sampah_project/components/account_check.dart';
import 'package:sampah_project/components/input_field.dart';
import 'package:sampah_project/components/password_field.dart';
import 'package:sampah_project/components/rounded_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyLogin(),
    );
  }
}

class BodyLogin extends StatelessWidget {
  const BodyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        height: size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: size.height * 0.10,
              ),
              Text(
                "LOGIN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              InputField(
                hintText: "Your Email",
                onChanged: (value) {},
              ),
              PasswordField(
                hintText: "Password",
                onChanged: (value) {},
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Button(
                text: "LOGIN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NavScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              AccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignupScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
