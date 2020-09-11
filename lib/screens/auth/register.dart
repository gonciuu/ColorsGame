import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  final Function login;
  Register(this.login);
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: FlatButton(child: Text("Login"),onPressed: (){widget.login();},)),
    );
  }
}
