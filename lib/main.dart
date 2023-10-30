import 'package:findtoread/config/Theme.dart';
import 'package:findtoread/pages/welcomepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      title: "Find To Read",
      home: WelcomePage(),
    );
  }
}
