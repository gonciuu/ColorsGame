import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                  child: Container(color: Colors.amber), fit: FlexFit.tight),
              Flexible(
                  child: Container(color: Colors.blueAccent),
                  fit: FlexFit.tight)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("0", style: TextStyle(color: Colors.white,
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold),),
                SizedBox(height: 50.0,),
                GestureDetector(
                  child: Icon(
                    Icons.play_circle_outline,
                    size: 180.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 70.0,),
                Text("High score:\n23931", style: TextStyle(color: Colors.white,
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
