import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loss extends StatelessWidget {

  final int points;
  final Function playAgain;
  Loss({this.points,this.playAgain});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
          child: Text(
            "Your score :\n$points",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height *0.05,),
        FittedBox(
          child: Text(
            "Your high-score :\n34324324",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height *0.05,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(child: Icon(Icons.play_circle_outline,color: Colors.white,size: 110.0,),onTap: (){
              playAgain();
            },),
            Icon(Icons.supervised_user_circle,color: Colors.white,size: 110.0,),
          ],
        )
      ],
    );
  }
}
