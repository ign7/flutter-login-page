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
  bool _isMaleSelected = false;
  bool _isFemaleSelected = false;
  bool _notifyByEmail = false;
  bool _notifyByCellphone = false;
  double _fontSize = 16.0;

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
            Row(
              children: <Widget>[
                Text('Masculino'),
                Checkbox(
                  value: _isMaleSelected,
                  onChanged: (value) {
                    setState(() {
                      _isMaleSelected = value!;
                      if (_isMaleSelected) {
                        _isFemaleSelected = false;
                      }
                    });
                  },
                  activeColor: Colors.blue,
                ),
                Text('Feminino'),
                Checkbox(
                  value: _isFemaleSelected,
                  onChanged: (value) {
                    setState(() {
                      _isFemaleSelected = value!;
                      if (_isFemaleSelected) {
                        _isMaleSelected = false;
                      }
                    });
                  },
                  activeColor: Colors.blue,
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text('Notificações'),
            Row(
              children: <Widget>[
                Text('Email'),
                Switch(
                  value: _notifyByEmail,
                  onChanged: (value) {
                    setState(() {
                      _notifyByEmail = value;
                    });
                  },
                  activeColor: Colors.blue,
                ),
                Text('Celular'),
                Switch(
                  value: _notifyByCellphone,
                  onChanged: (value) {
                    setState(() {
                      _notifyByCellphone = value;
                    });
                  },
                  activeColor: Colors.blue,
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
            SizedBox(height: 16.0),
            Slider(
              value: _fontSize,
              min: 16,
              max: 32,
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  _fontSize = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'IGOR FREDERICO GOMES QUARESMA',
              style: TextStyle(fontSize: _fontSize),
            ),
          ],
        ),
      ),
    );
  }
}
