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

  bool isStart = false;
  bool isLoss = false;

  Color drawColor() => Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1);

  void startGame() => setState(() => isStart = true);

  void playAgain() => setState(() {
    points = 0;
    isStart = false;
    isLoss = false;
  });

  void playGame(int timeDifference) => setState((){
    if(timeDifference>=5000 && timeDifference<8000){
      points+=500;
    }else if(timeDifference>=8000){
      points++;
    }else{
      points+=(5000-timeDifference);
    }
  });

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
          !isStart ? GameColors(color:drawColor(),playGame: (){},loss: (){}) : GameColors(color: drawColor(),playGame: playGame,loss: loss,),
          !isLoss?
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
