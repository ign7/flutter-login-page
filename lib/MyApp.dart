import 'package:flutter/material.dart';
import 'Login.dart';
import 'Rotas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Rotas.login, 
      routes: Rotas.routes, 
    );
  }
}