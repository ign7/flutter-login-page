import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Login.dart';
import 'Login.dart';
import 'register.dart';
import 'MyPage.dart';
import 'HomePage.dart';

class Rotas {
  static const String home = '/';
  static const String second = '/second';
  static const String third = '/third';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => HomePage(),
    second: (context) => Register(),
    third: (context) => MyPage(mensagem:'meu ovo'),
  };
}
