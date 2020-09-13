import 'package:color_run/authentication/authentication.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInterface extends StatefulWidget {
  //start game
  final Function startGame;

  UserInterface(this.startGame);

  @override
  _UserInterfaceState createState() => _UserInterfaceState();
}

class _UserInterfaceState extends State<UserInterface> {
  final Authentication _authentication = Authentication();

  Future logOut() async {
    var dialog = AlertDialog(
      backgroundColor: Color.fromRGBO(34, 12, 44, 1),
      title: Text(
        "Log Out?",
        style: TextStyle(
            fontSize: 18.0, fontWeight: FontWeight.w700, color: Colors.white),
      ),
      content: Text(
        "Are you sure to log out from app?",
        style: TextStyle(
            fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.white),
      ),
      actions: [
        FlatButton(
          highlightColor: Color.fromRGBO(40, 12, 44, 1),
          onPressed: () => Navigator.pop(context),
          child: Text(
            "Cancel",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(244, 13, 193, 1),
            ),
          ),
        ),
        FlatButton(
          highlightColor: Color.fromRGBO(40, 12, 44, 1),
          onPressed: () async {
            try {
              Navigator.pop(context);
              await _authentication.logOut();
            } catch (e) {
              Scaffold.of(context).showSnackBar(SnackBar(content: Text(e.toString()),));
            }
          },
          child: Text(
            "Confirm",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(244, 13, 193, 1),
            ),
          ),
        )
      ],
    );
    await showDialog(context: context, child: dialog);
    // dynamic result = await _authentication.logOut();
    //if (result is String) {
    //   Scaffold.of(context).showSnackBar(SnackBar(content: Text(result)));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 70.0,
          ),
          GestureDetector(
            onTap: widget.startGame,
            child: Icon(
              Icons.play_circle_outline,
              size: 180.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 70.0,
          ),
          FittedBox(
            child: Text(
              "High score:\n23931",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 45.0,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.supervised_user_circle,
                size: 70.0,
                color: Colors.white,
              ),
              SizedBox(
                width: 30.0,
              ),
              GestureDetector(
                child: Icon(
                  Icons.exit_to_app,
                  size: 70.0,
                  color: Colors.white,
                ),
                onTap: () async => logOut(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
