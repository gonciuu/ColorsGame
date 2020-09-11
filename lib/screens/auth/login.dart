import 'package:flutter/material.dart';
class Login extends StatefulWidget {

  final Function register;
  Login(this.register);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: FlatButton(child: Text("Register"),onPressed: (){widget.register();},)) ,
    );
  }
}
