import 'package:color_run/authentication/authentication.dart';
import 'package:color_run/firestore/database.dart';
import 'package:flutter/material.dart';

class UserRank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromRGBO(244, 13, 193, 1),
        ),
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        child: FutureBuilder(
          future: Authentication().getUserId(),
          builder: (context, uid) => StreamBuilder<int>(
              stream: Database().userPosition(uid.data.toString()),
              builder: (context, snapshot) {
                return Text(
                  "Your rank : ${snapshot.data}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                );
              }),
        ));
  }
}
