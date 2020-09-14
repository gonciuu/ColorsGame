import 'package:color_run/authentication/authentication.dart';
import 'package:flutter/material.dart';

class LogOut extends StatelessWidget {

  final Authentication _authentication = Authentication();

  //--------show confirm dialog on log out from the app--------
  Future logOut(BuildContext context) async {
    final Widget dialog = AlertDialog(
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
          //close the dialog
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
            //logout from the app
            Navigator.pop(context);
            Navigator.pop(context);
            dynamic result = await _authentication.logOut();
            if (result is String) {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text(result),
              ));
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
    //show the dialog
    await showDialog(context: context, child: dialog);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        color: Color.fromRGBO(170, 138, 183, 1),
        onPressed: () async => logOut(context),
        child: Text(
          "Log Out",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
