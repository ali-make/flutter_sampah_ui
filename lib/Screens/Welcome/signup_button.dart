import 'package:flutter/material.dart';
import 'package:sampah_project/Screens/screens.dart';

//Component no1 (rounded buttton signup)
class RoundedButtonSignup extends StatelessWidget {
  final Color color, textColor;
  const RoundedButtonSignup(
      {Key? key, this.color = Colors.green, this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 15),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      primary: Colors.green,
    );
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignupScreen();
                },
              ),
            );
          },
          style: style,
          child: const Text('SIGNUP'),
        ),
      ),
    );
  }
}
