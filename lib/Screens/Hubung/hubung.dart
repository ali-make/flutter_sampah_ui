import 'package:flutter/material.dart';
import 'package:sampah_project/Screens/Nav/nav_screen.dart';

class RumahBaru extends StatelessWidget {
  const RumahBaru({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavScreen(),
    );
  }
}
