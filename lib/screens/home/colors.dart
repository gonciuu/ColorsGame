import 'dart:math';
import 'package:flutter/material.dart';

class GameColors extends StatefulWidget {
  final Color color; //random color from home
  final Function calculatePoints; //function to calculate the points
  final Function loss; //function handling the loss

  GameColors({this.color, this.calculatePoints, this.loss});

  @override
  _GameColorsState createState() => _GameColorsState();
}

class _GameColorsState extends State<GameColors> {
  int startTime = 0;

  //select one of 2 containers to set darker color
  int randomContainer() => Random().nextInt(2);

  //select value of darker color
  double randomDarker = Random().nextDouble() * (0.05 - 0.015) + 0.015;

  @override
  Widget build(BuildContext context) {
    startTime = DateTime.now().millisecondsSinceEpoch;
    final Widget dark = Flexible(
        child: Stack(
          children: [
            Container(color: widget.color),
            GestureDetector(
              child: Container(color: Color.fromRGBO(0, 0, 0, randomDarker)),
              onTap: () async{
                widget.loss(); //loss the game
                print(randomContainer());
              },
            ),
          ],
        ),
        fit: FlexFit.tight);

    final Widget light = Flexible(
        child: GestureDetector(
          child: Container(color: widget.color),
          onTap: () {
            //good color chosen
            widget.calculatePoints(
                DateTime.now().millisecondsSinceEpoch - startTime);
          },
        ),
        fit: FlexFit.tight);

    int colorRandomContainer = randomContainer();
    return Row(
      children: <Widget>[
        //show correct containers by random number
        colorRandomContainer == 0 ? dark : light,
        colorRandomContainer == 0 ? light : dark
      ],
    );
  }
}
