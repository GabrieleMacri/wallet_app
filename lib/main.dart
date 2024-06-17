import 'package:flutter/material.dart';
import 'package:wallet_app_ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        highContrastTheme: HighContrastThemeData(),
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 16.0, color: Colors.black),
        ),
      ),
    );
  }
}
