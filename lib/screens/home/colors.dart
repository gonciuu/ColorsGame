import 'dart:math';
import 'package:flutter/material.dart';

class GameColors extends StatefulWidget {
  final Color _color;
  final Function _playGame;

  GameColors(this._color, this._playGame);

  @override
  _GameColorsState createState() => _GameColorsState();
}

class _GameColorsState extends State<GameColors> {

  double randomDarker() => Random().nextDouble() * (0.05 - 0.015) + 0.015;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(child: Container(color: widget._color), fit: FlexFit.tight),
        Flexible(
            child: Stack(
              children: [
                Container(color: widget._color),
                GestureDetector(
                  child:
                      Container(color: Color.fromRGBO(0, 0, 0, randomDarker())),
                  onTap: () {
                    widget._playGame();
                    print("klik");
                  },
                ),
              ],
            ),
            fit: FlexFit.tight)
      ],
    );
  }
}
