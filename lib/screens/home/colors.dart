import 'dart:math';
import 'package:flutter/material.dart';


class GameColors extends StatefulWidget {

  final Color _color;
  GameColors(this._color);

  @override
  _GameColorsState createState() => _GameColorsState();
}

class _GameColorsState extends State<GameColors> {

  double randomDarker()=>Random().nextDouble() * (0.05 - 0.02) + 0.02;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
            child: Container(color: widget._color), fit: FlexFit.tight),
        Flexible(
            child: Stack(
              children: [
                Container(color: widget._color),
                Container(color: Color.fromRGBO(0, 0, 0, randomDarker())),
              ],
            ),
            fit: FlexFit.tight)
      ],
    );
  }
}
