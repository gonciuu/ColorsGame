import 'package:color_run/screens/top_players/top_players.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loss extends StatefulWidget {
  final int points;             //points which user gets in game
  final Function playAgain;     //play again in game
  final Function getHighScore;     //play again in game

  Loss({this.points,this.playAgain,this.getHighScore});

  @override
  _LossState createState() => _LossState();
}

class _LossState extends State<Loss> {

  //get user actual high score
  int highScore = 0;

  Future userHighScore()async{
    this.highScore = await widget.getHighScore();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    userHighScore();
  }

  void showTopPlayersBottomSheet() {
    showBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        backgroundColor: Color.fromRGBO(34, 12, 44, 1),
        context: context, builder: (context) => TopPlayers());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
          child: Text(
            "Your score :\n${widget.points}",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height *0.05,),
        FittedBox(
          child: Text(
            "Your high-score :\n$highScore",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height *0.05,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(child: Icon(Icons.play_circle_outline,color: Colors.white,size: 120.0,),onTap: (){
              widget.playAgain();
            },),
            GestureDetector(child: Icon(Icons.supervised_user_circle,color: Colors.white,size: 120.0,),onTap: () => showTopPlayersBottomSheet(),),
          ],
        )
      ],
    );
  }
}
