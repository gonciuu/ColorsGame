import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class UserAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
