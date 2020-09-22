import 'package:color_run/models/user.dart';
import 'package:color_run/screens/top_players/user_list_tile.dart';
import 'package:flutter/material.dart';


class Top extends StatelessWidget {

  //user top 10 players
  final AsyncSnapshot<List<User>> snapshot;
  Top(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) => UserListTile(snapshot.data[index]),
        itemCount: snapshot.data.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics());
  }
}
