import 'package:color_run/screens/settings/change_nickname.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25,30,25,20),
      child: Column(
        children: [
          Text("Change Nickname",style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w600
          ),),SizedBox(height: 20,),
          ChangeNickname(),
          LogOut()
        ],
      ),
    );
  }
}
