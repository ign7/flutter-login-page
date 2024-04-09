import 'package:flutter/material.dart';
import 'Login.dart';

class MyApp extends StatelessWidget {
   const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(), // Exibe a tela de login
    );
  }
}
