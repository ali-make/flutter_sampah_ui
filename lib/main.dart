import 'package:flutter/material.dart';
import 'package:sampah_project/Screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SAMPAH',
      theme: ThemeData(
        primaryColor: Colors.green,
        backgroundColor: Colors.green[200],
      ),
      home: WelcomeScreen(),
    );
  }
}
