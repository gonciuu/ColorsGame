import 'dart:math';

import 'package:color_run/screens/home/user_interface.dart';

import './colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color drawColor(){
    return Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GameColors(drawColor()),
          UserInterface()
        ],
      ),
    );
  }
}
