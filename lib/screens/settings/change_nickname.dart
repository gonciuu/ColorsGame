import 'package:color_run/constants/inputs_decorations.dart';
import 'package:flutter/material.dart';

class ChangeNickname extends StatefulWidget {
  @override
  _ChangeNicknameState createState() => _ChangeNicknameState();
}

class _ChangeNicknameState extends State<ChangeNickname> {
  final _emailController = TextEditingController(text: "Janek213");

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
              controller: _emailController,
              cursorColor: Colors.purple,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.white),
              decoration: InputLoginTextDecoration.copyWith(
                hintText: "Change nickname",
                hintStyle: TextStyle(color: Colors.grey[400]),
              )),SizedBox(height: 15,),
          Container(
            width: double.infinity,
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              color: Color.fromRGBO(244, 13, 193, 1),
              onPressed: () {},
              child: Text(
                "Change",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
