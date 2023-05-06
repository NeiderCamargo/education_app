import 'package:education_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

//esto ejecuta el programa
void main() => runApp(MyApp());

//crear clase
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
