import 'package:flutter/material.dart';


class GameColors extends StatefulWidget {
  @override
  _GameColorsState createState() => _GameColorsState();
}

class _GameColorsState extends State<GameColors> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
            child: Container(color: Colors.amber), fit: FlexFit.tight),
        Flexible(
            child: Container(color: Colors.blueAccent),
            fit: FlexFit.tight)
      ],
    );
  }
}
