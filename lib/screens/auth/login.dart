import './login_form.dart';
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
      backgroundColor: Color.fromRGBO(34, 12, 44, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            scale: MediaQuery.of(context).size.height * 0.005,
          ),
          SizedBox(
            height: 20.0,
          ),
          FittedBox(
            child: Text(
              "Welcome Back",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          FittedBox(
            child: Text(
              "Login to start playing",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          LoginForm(),
          SizedBox(
            height: 4.0,
          ),
          GestureDetector(
            onTap: () => widget.register(),
            child: FittedBox(
              child: Text(
                "New Member? Register here",
                style: TextStyle(
                    color: Color.fromRGBO(244, 13, 193, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
