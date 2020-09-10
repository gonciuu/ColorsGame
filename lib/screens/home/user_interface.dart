
import 'package:flutter/material.dart';


class UserInterface extends StatefulWidget {
  @override
  _UserInterfaceState createState() => _UserInterfaceState();
}

class _UserInterfaceState extends State<UserInterface> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Text(
              "23234",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 70.0,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 70.0,
          ),
          GestureDetector(
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
        ],
      ),
    );
  }
}
