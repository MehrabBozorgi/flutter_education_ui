import 'package:flutter/material.dart';
import 'package:flutter_education_ui/screen/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),

    );
  }
}
