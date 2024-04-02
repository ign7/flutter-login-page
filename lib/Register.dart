import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login.dart';
import 'Login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<Register> {
  bool _isObscured = true;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Create an Account'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Adicione aqui a lógica para mostrar o menu suspenso
          },
        ),
        elevation: 2,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Nome',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      suffixIcon: IconButton(
                        icon: Icon(_isObscured
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: _togglePasswordVisibility,
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirmar Senha',
                      suffixIcon: IconButton(
                        icon: Icon(_isObscured
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: _togglePasswordVisibility,
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              );
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
