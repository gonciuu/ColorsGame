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
        children: <Widget> [
          Row(
            children: <Widget> [
              Flexible(child: Container(color: Colors.amber),fit: FlexFit.tight),
              Flexible(child: Container(color: Colors.blueAccent),fit: FlexFit.tight)
            ],
          ),
        ],
      ),
    );
  }
}
