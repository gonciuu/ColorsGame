import 'package:color_run/authentication/authentication.dart';
import 'package:color_run/screens/settings/settings.dart';
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


  Future showBottomSettings() async{
     await showModalBottomSheet(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10.0),
         ),
         backgroundColor: Color.fromRGBO(34, 12, 44, 1),
         context: context, builder: (context) => Settings());
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
                  Icons.settings,
                  size: 70.0,
                  color: Colors.white,
                ),
                onTap: () async => showBottomSettings()

              ),
            ],
          )
        ],
      ),
    );
  }
}
