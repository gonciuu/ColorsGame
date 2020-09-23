import 'package:color_run/authentication/authentication.dart';
import 'package:color_run/screens/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import './screens/home/home.dart';
import './screens/auth/auth.dart';

void main() {
  runApp(ColorRun());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class ColorRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: StreamProvider<FirebaseUser>.value(
        value: Authentication().user,
        child: Wrapper(),
      ),
      theme: ThemeData(fontFamily: "Montserrat"),
    );
  }
}
