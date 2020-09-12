
import 'package:flutter/material.dart';


class LoginForm extends StatelessWidget {
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
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20.0),
                filled: true,
                fillColor: Color.fromRGBO(72, 47, 82, 1),
                hintStyle: TextStyle(
                    color: Colors.grey[400]
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none),
                hintText: 'Enter email',
              ),
            ),SizedBox(height: 15.0,),
            TextFormField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20.0),
                filled: true,
                fillColor: Color.fromRGBO(72, 47, 82, 1),
                hintStyle: TextStyle(
                    color: Colors.grey[400]
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none),
                hintText: 'Enter password',
              ),
            ),SizedBox(height: 30.0,),
            Container(
              width: double.infinity,
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                color: Color.fromRGBO(244, 13, 193, 1),
                onPressed: () {  },
                child: Text(
                  "Login",
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
                  "Login with google",
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
