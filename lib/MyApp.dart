import 'package:flutter/material.dart';
import 'Login.dart';

class MyApp extends StatelessWidget {
   const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(), // Exibe a tela de login
    );
  }
}
