import 'package:flutter/material.dart';

class Points extends StatelessWidget {
  final int points;
  Points(this.points);
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(
        points.toString(),
        style: TextStyle(
            color: Colors.white, fontSize: 70.0, fontWeight: FontWeight.w700),
      ),
    );
  }
}
