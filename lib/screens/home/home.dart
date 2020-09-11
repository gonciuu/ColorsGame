import 'dart:math';

import 'package:color_run/screens/home/loss.dart';

import './points.dart';
import './user_interface.dart';

import './colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int points = 0;

  bool isStart = false; //bool which check if user start game using play icon button

  bool isLoss = false;  //bool which check if user loss the game (show loss screen)

  //generage random color
  Color drawColor() => Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1);


  //start the game
  void startGame() => setState(() => isStart = true);

  //play again (show again ui and play button (called in loss screen))
  void playAgain() => setState(() {
    points = 0;
    isStart = false;
    isLoss = false;
  });

  //calculate the points by time difference between clicked
  void calculatePoints(int timeDifference) => setState((){
    if(timeDifference>=5000 && timeDifference<8000){
      points+=500;
    }else if(timeDifference>=8000){
      points++;
    }else{
      points+=(5000-timeDifference);
    }
  });

  //loss the game (show loss screen on screen and stop clicked on containers)
  void loss (){
    setState(() {
      isLoss = true;
      isStart = false;
    } );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          !isStart ? GameColors(color:drawColor(),calculatePoints: (){},loss: (){} /*dont play game (cannot get points)*/) : GameColors(color: drawColor(),calculatePoints: calculatePoints,loss: loss,/* play game (can get points)*/),
          !isLoss?  /*check if loss to show loss screen*/
          Column(
            mainAxisAlignment: !isStart ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: !isStart ? 0.0 : MediaQuery.of(context).size.height * 0.12),) ,
              Points(points),
              if(!isStart) UserInterface(startGame)
            ],
          ): Loss(playAgain: playAgain, points: points,)
        ],
      ),
    );
  }
}
