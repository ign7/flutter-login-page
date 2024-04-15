import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Login.dart';
import 'Login.dart';
import 'register.dart';
import 'MyPage.dart';

import 'HomePage.dart';

class Rotas {
  static const String home = '/home';
   static const String login = '/login';
  static const String register = '/register';
  static const String mypage = '/mypage';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => HomePage(),
    register: (context) => Register(),
    login:(context) => Login(),
    mypage: (context) => MyPage(mensagem:""),
  };
}
