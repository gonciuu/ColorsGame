import './change_nickname.dart';
import 'package:flutter/material.dart';

import './log_out.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25,30,25,30),
      child: Column(
        children: [
          Text("Change Nickname",style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w600
          ),),SizedBox(height: 20,),
          ChangeNickname(),
          Spacer(),
          LogOut()
        ],
      ),
    );
  }
}
