import 'package:flutter/material.dart';

class Loss extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: FittedBox(
            child: Text(
              "Your score :\n353424",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
          fit: FlexFit.tight,
        ),
        Flexible(
          fit: FlexFit.tight,
          child: FittedBox(
            child: Text(
              "Your high-score :\n12453153",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
        ),
        Row(children: [
          
        ],)
      ],
    );
  }
}
