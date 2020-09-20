import 'package:color_run/models/user.dart';
import 'package:flutter/material.dart';


class Top extends StatelessWidget {
  final AsyncSnapshot<List<User>> snapshot;
  Top(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
        physics: NeverScrollableScrollPhysics());
  }
}
