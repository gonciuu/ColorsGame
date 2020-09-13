import './register_form.dart';

import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  //change screen to login
  final Function login;
  Register(this.login);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              "You're welcome!",
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
              "Register to start playing",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          RegisterForm(),
          SizedBox(
            height: 4.0,
          ),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => widget.login(),
            child: FittedBox(
              child: Text(
                "Registered? Login here",
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
