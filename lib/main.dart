import 'package:flutter/material.dart';

import './screens/home/home.dart';

void main() =>runApp(ColorRun());


class ColorRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
      theme: ThemeData(
        fontFamily: "Montserrat"
      ),
    );
  }
}
