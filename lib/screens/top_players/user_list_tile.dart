import 'package:color_run/models/user.dart';
import 'package:flutter/material.dart';

class UserListTile extends StatelessWidget {

  //user to show in list tile
  final User _user;
  UserListTile(this._user);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          0.0, 8.0, 8.0, 8.0),
      child: ListTile(
        title: Text(
          _user.nickName.length > 0
              ? _user.nickName
              : "Empty nick",
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: Colors.white),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        leading: CircleAvatar(
          backgroundColor:
          Color.fromRGBO(244, 13, 193, 1),
          radius: 40.0,
          child: Center(
            child: Text(
              _user.nickName.length >
                  0
                  ? "${_user.nickName[0].toUpperCase() ?? "?"}"
                  : "?",
              style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        trailing: Container(
          width: 100,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              _user.highScore
                  .toString(),
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
