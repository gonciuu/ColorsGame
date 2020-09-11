import 'package:flutter/material.dart';

import './screens/home/home.dart';
import './screens/auth/auth.dart';

void main() =>runApp(ColorRun());


class ColorRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Auth(),
      theme: ThemeData(
        fontFamily: "Montserrat"
      ),
    );
  }
}
