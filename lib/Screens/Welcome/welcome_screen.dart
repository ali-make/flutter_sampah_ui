import 'package:flutter/material.dart';
import 'package:sampah_project/Screens/screens.dart';

//Screen di halaman pertama
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWelcome(),
    );
  }
}
