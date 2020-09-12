import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          Image.asset('assets/images/logo.png',scale: MediaQuery.of(context).size.height * 0.005,),SizedBox(height: 20.0,),
          Text(
            "Welcome Back",
            style: TextStyle(
                color: Colors.white,
                fontSize: 35.0,
                fontWeight: FontWeight.bold),
          ),SizedBox(height: 5.0,), Text(
            "Login to start playing",
            style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              fontWeight: FontWeight.w600),
          ),SizedBox(height: 50.0,),
          Form(
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
          ),SizedBox(height: 2.0,),
          GestureDetector(
            onTap: ()=>widget.register(),
            child: Text(
              "New Member? Register here",
              style: TextStyle(color: Color.fromRGBO(244, 13, 193, 1),fontWeight: FontWeight.w700,fontSize: 14.0),
            ),
          )
        ],
      ),
    );
  }
}
