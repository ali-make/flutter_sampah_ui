import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function() press;
  final Color color, textColor;
  const Button({
    Key? key,
    required this.text,
    required this.press,
    this.color = Colors.green,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          onPressed: press,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            primary: Colors.green,
            textStyle: TextStyle(fontSize: 15),
          ),
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
