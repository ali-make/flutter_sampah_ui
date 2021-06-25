import 'package:flutter/material.dart';
import 'package:sampah_project/Screens/screens.dart';

//Body di halaman welcome
class BodyWelcome extends StatelessWidget {
  const BodyWelcome({Key? key}) : super(key: key);

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
                height: size.height * 0.15,
              ),
              Text(
                'WELCOME TO SAMPAH',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              RoundedButtonLogin(),
              RoundedButtonSignup(),
            ],
          ),
        ),
      ),
    );
  }
}
