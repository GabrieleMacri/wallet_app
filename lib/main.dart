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
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 16.0, color: Colors.black),
        ),
        useMaterial3: true, // Updated to use Material 3 if needed
      ),
    );
  }
}
