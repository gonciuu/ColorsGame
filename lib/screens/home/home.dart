import 'dart:math';

import './points.dart';
import './user_interface.dart';

import './colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  bool isStart = false;

  Color drawColor() => Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1);

  void startGame() => setState(() => isStart = true);
  void endGame() => setState(() => isStart = false);


  void playGame() => setState((){

  });

  void loss (){
    endGame();
    //zerowanie punktow
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          !isStart ? GameColors(color:drawColor(),playGame: (){},loss: (){}) : GameColors(color: drawColor(),playGame: playGame,loss: loss,),
          Column(
            mainAxisAlignment: !isStart ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: !isStart ? 0.0 : MediaQuery.of(context).size.height * 0.12),) ,
              Points(),
              if(!isStart) UserInterface(startGame)
            ],
          )
        ],
      ),
    );
  }
}
