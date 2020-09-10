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
  
  int randomContainer() => Random().nextInt(2);
  double randomDarker = Random().nextDouble() * (0.05 - 0.015) + 0.015;

  @override
  Widget build(BuildContext context) {
    final Widget dark = Flexible(
        child: Stack(
          children: [
            Container(color: widget._color),
            GestureDetector(
              child: Container(color: Color.fromRGBO(0, 0, 0, randomDarker)),
              onTap: () {
                widget._playGame();
                print(randomContainer());
              },
            ),
          ],
        ),
        fit: FlexFit.tight);

    final Widget light = Flexible(child: GestureDetector(child: Container(color: widget._color),onTap: (){
      widget._playGame();
    },), fit: FlexFit.tight);

    int colorRandomContainer = randomContainer();

    return Row(
      children: <Widget>[
        colorRandomContainer == 0 ? dark : light,
        colorRandomContainer == 0 ? light : dark
      ],
    );
  }
}
