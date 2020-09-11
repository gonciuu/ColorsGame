import 'package:flutter/material.dart';

import './login.dart';
import './register.dart';


class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {

  bool isLogin = true;
  void changeLoginScreen()=>setState(()=>isLogin = !isLogin);

  @override
  Widget build(BuildContext context) {
    return isLogin ? Login(changeLoginScreen) : Register(changeLoginScreen);
  }
}
