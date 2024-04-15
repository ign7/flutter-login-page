import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/HomePage.dart';

class MyPage extends StatelessWidget {
  final String mensagem;

  MyPage({required this.mensagem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Adicione aqui a lógica para mostrar o menu suspenso
          },
        ),
        elevation: 2,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Mensagem  Recebida:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30.0),
              Text(
                mensagem,
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue, // Define a cor de fundo da AppBar como azul
      title: Text(style: TextStyle(color: Colors.white), 'Home'),
      leading: IconButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        icon: Icon(Icons.menu),
        onPressed: () {
          // Adicione aqui a lógica para mostrar o menu suspenso
        },
      ),
      elevation: 2, // Altura do relevo da AppBar
    ),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'minha segunda tela exiba a msg aki',
              style: TextStyle(fontSize: 20),
            ),
            // Adicione mais widgets aqui conforme necessário
          ],
        ),
      ),
    ),
  );
}
