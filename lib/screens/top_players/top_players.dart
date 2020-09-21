import 'package:color_run/firestore/database.dart';
import 'package:color_run/models/user.dart';
import 'package:color_run/screens/top_players/top.dart';
import 'package:color_run/screens/top_players/user_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'UserRank.dart';

class TopPlayers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<User>>(
        stream: Database().allUsers,
        builder: (context, snapshot) {
          if (snapshot.hasData)
            return Container(
                width: double.infinity,
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      UserAppBar(),
                      Top(snapshot),
                      SizedBox(
                        height:20.0
                      ),
                      UserRank(),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ));
          else
            return Center(
                child: Text("No any data",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)));
        });
  }
}
