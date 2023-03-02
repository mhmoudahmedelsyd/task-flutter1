
import 'package:courestest/login_screen.dart';
import 'package:courestest/register_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}


