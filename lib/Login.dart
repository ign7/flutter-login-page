import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'register.dart';
import 'homepage.dart';
import 'Rotas.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.blue, // Define a cor de fundo da AppBar como azul
        title: Text(style: TextStyle(color: Colors.white), 'Login'),
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
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Sign in',
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Rotas.home);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: Text('enter'),
              ),
              SizedBox(height: 30.0),
              Text(
                style: TextStyle(
                  color: Colors.blue, // Define a cor do texto como vermelho
                ),
                'Forgot password?',
              ),
              SizedBox(height: 30.0),
              GestureDetector(
                onTap: () {
                 Navigator.pushNamed(context, Rotas.register);
                },
                child: Text(
                  'Register...',
                  style: TextStyle(
                    color: Colors.blue, // Define a cor do texto como azul
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
