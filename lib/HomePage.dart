import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'register.dart';
import 'MyPage.dart';
import 'Rotas.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _messageController = TextEditingController();

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
                'Welcome to Home Page',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 30.0),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Envie Sua mensagem !!',
                  ),
                  controller: _messageController,
                ),
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyPage(
                        mensagem: _messageController.text,
                      ),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: Text('send'),
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                   Navigator.pushNamed(context, Rotas.login);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red),
                ),
                child: Text('back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
