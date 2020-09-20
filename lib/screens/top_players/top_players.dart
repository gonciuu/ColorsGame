import 'package:color_run/firestore/database.dart';
import 'package:color_run/models/user.dart';
import 'package:flutter/material.dart';

class TopPlayers extends StatelessWidget {
  final list = [
    User(highScore: 12, uid: "ewfefefw", nickName: "jakis tam nick"),
    User(highScore: 12, uid: "ewfefefw", nickName: "jakis tam nick"),
    User(highScore: 3242345452, uid: "ewfefefw", nickName: "jakis tam nick"),
    User(highScore: 12, uid: "ewfefefw", nickName: "jakis tam nick"),
    User(highScore: 2565724, uid: "ewfefefw", nickName: "jakis tam nick"),
    User(highScore: 12, uid: "ewfefefw", nickName: "jakis tam nick"),
    User(highScore: 12, uid: "ewfefefw", nickName: "jakis tam nick"),
    User(highScore: 12, uid: "ewfefefw", nickName: ""),
    User(highScore: 12, uid: "ewfefefw", nickName: "jakis tam nirfrewwck"),
    User(highScore: 12, uid: "ewfefefw", nickName: "jakis tam nirfrewwck"),
  ];

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<User>>(
      stream: Database().allUsers,
      builder: (context, snapshot) {
        return Container(
            width: double.infinity,
            height: double.infinity,
            child:ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
                child: ListTile(
                  title: Text(
                    snapshot.data[index].nickName.length > 0
                        ? snapshot.data[index].nickName
                        : "Empty nick",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Color.fromRGBO(244, 13, 193, 1),
                    radius: 40.0,
                    child: Center(
                      child: Text(
                        snapshot.data[index].nickName.length > 0
                            ? "${snapshot.data[index].nickName[0].toUpperCase() ?? "?"}"
                            : "?",
                        style:
                            TextStyle(fontSize: 36.0, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  trailing: Container(
                    width: 100,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        snapshot.data[index].highScore.toString(),
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              itemCount: snapshot.data.length,
            ));
      }
    );
  }
}
