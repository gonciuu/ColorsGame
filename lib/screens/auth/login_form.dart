import 'package:color_run/authentication/authentication.dart';
import 'package:color_run/constants/inputs_decorations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final Authentication _authentication = Authentication();

  void showBottomSnackBar(Widget content) {
    Scaffold.of(context).showSnackBar(SnackBar(content: content));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                decoration: InputLoginTextDecoration.copyWith(
                  hintText: "Enter Email",
                  hintStyle: TextStyle(color: Colors.grey[400]),
                )),
            SizedBox(
              height: 15.0,
            ),
            TextFormField(
                controller: passwordController,
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputLoginTextDecoration.copyWith(
                    hintText: "Enter Password",
                    hintStyle: TextStyle(color: Colors.grey[400]))),
            SizedBox(
              height: 30.0,
            ),
            Container(
              width: double.infinity,
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                color: Color.fromRGBO(244, 13, 193, 1),
                onPressed: () async {
                  dynamic user = await _authentication.loginWithEmailAndPassword(emailController.text, passwordController.text);
                  if (user is String) {
                    showBottomSnackBar(Text(user));
                  } else {
                    print((user as AuthResult).user.uid);
                  }
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              width: double.infinity,
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                color: Color.fromRGBO(170, 138, 183, 1),
                onPressed: () {},
                child: Text(
                  "Login with google",
                  style: TextStyle(
                      color: Color.fromRGBO(34, 12, 44, 1),
                      fontWeight: FontWeight.w700),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
