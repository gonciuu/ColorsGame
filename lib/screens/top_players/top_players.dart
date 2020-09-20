import 'package:color_run/authentication/authentication.dart';
import 'package:color_run/firestore/database.dart';
import 'package:color_run/models/user.dart';
import 'package:color_run/screens/auth/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                      SizedBox(
                        height: 60.0,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20.0,
                          ),
                          InkWell(
                            child: Icon(
                              CupertinoIcons.back,
                              size: 36.0,
                              color: Colors.white,
                            ),
                            onTap: () => Navigator.pop(context),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            "Top Players",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SingleChildScrollView(
                        child: ListView.builder(
                            itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 8.0, 8.0, 8.0),
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
                                      backgroundColor:
                                          Color.fromRGBO(244, 13, 193, 1),
                                      radius: 40.0,
                                      child: Center(
                                        child: Text(
                                          snapshot.data[index].nickName.length >
                                                  0
                                              ? "${snapshot.data[index].nickName[0].toUpperCase() ?? "?"}"
                                              : "?",
                                          style: TextStyle(
                                              fontSize: 36.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                    trailing: Container(
                                      width: 100,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          snapshot.data[index].highScore
                                              .toString(),
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
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics()),
                      ),SizedBox(
                        height:20.0
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromRGBO(244, 13, 193, 1),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 50.0),

                        child: FutureBuilder(
                          future: Authentication().getUserId(),
                          builder: (context,uid) => StreamBuilder<int>(
                            stream: Database().userPosition(uid.data.toString()),
                            builder: (context, snapshot) {
                              return Text("Your rank : ${snapshot.data}",style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600
                              ),);
                            }
                          ),
                        ),
                      ),SizedBox(
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
