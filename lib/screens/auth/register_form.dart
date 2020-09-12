
import 'package:color_run/constants/inputs_decorations.dart';
import 'package:flutter/material.dart';


class RegisterForm extends StatelessWidget {
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
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.white),
                decoration:  InputLoginTextDecoration.copyWith(hintText:"Enter Email",hintStyle: TextStyle(color: Colors.grey[400]),)
            ),SizedBox(height: 15.0,),
            TextFormField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration:  InputLoginTextDecoration.copyWith(hintText:"Enter Password",hintStyle: TextStyle(color: Colors.grey[400]),)
            ),SizedBox(height: 30.0,),
            Container(
              width: double.infinity,
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                color: Color.fromRGBO(244, 13, 193, 1),
                onPressed: () {  },
                child: Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ),SizedBox(height: 15.0,),
            Container(
              width: double.infinity,
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                color: Color.fromRGBO(170, 138, 183, 1),
                onPressed: () {  },
                child: Text(
                  "Register with google",
                  style: TextStyle(
                      color: Color.fromRGBO(34, 12, 44, 1),
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
