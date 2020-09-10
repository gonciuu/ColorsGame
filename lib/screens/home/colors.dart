import 'dart:math';
import 'package:flutter/material.dart';

class GameColors extends StatefulWidget {
  final Color color;
  final Function playGame;
  final Function loss;

  GameColors({this.color, this.playGame,this.loss});

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
            Container(color: widget.color),
            GestureDetector(
              child: Container(color: Color.fromRGBO(0, 0, 0, randomDarker)),
              onTap: () {
                widget.loss();
                print(randomContainer());
              },
            ),
          ],
        ),
        fit: FlexFit.tight);

    final Widget light = Flexible(child: GestureDetector(child: Container(color: widget.color),onTap: (){
      widget.playGame();
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
