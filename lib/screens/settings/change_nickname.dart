import 'package:color_run/authentication/authentication.dart';
import 'package:color_run/constants/inputs_decorations.dart';
import 'package:color_run/firestore/database.dart';
import 'package:color_run/models/user.dart';
import 'package:flutter/material.dart';

class ChangeNickname extends StatefulWidget {
  @override
  _ChangeNicknameState createState() => _ChangeNicknameState();
}

class _ChangeNicknameState extends State<ChangeNickname> {
  final _nickController = TextEditingController(text: "Loading username...");
  final Database _database = Database();

  String changeResult = "";

  Future getUserNick() async{
    dynamic result = await _database.getUserInfo(await Authentication().getUserId());
    if(result!=null){
     _nickController.text = (result as User).nickName;
    }
  }

  @override
  void initState() {
    super.initState();
    getUserNick();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
              controller: _nickController,
              cursorColor: Colors.purple,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.white),
              decoration: InputLoginTextDecoration.copyWith(
                hintText: "Change nickname",
                counterText: changeResult,
                counterStyle: TextStyle(color: Colors.grey[200]),
                hintStyle: TextStyle(color: Colors.grey[400]),
              )),SizedBox(height: 15,),
          Container(
            width: double.infinity,
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              color: Color.fromRGBO(244, 13, 193, 1),
              onPressed: () async{
               dynamic result = await _database.updateNick(_nickController.text,await Authentication().getUserId());
               if(result is String) {
                 setState(() => changeResult = result);
                 print(result);
               }else{
                 setState(() => changeResult = "Nick has been changed");
                 Future.delayed(const Duration(seconds: 2), () => Navigator.pop(context));
               }
              },
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
