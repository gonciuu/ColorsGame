
import 'package:flutter/cupertino.dart';

class User {
  String uid;
  String nickName;
  int highScore;

  User({@required this.nickName,@required this.uid,@required this.highScore});


  Map<String, dynamic> userMap() {
    Map<String, dynamic> mapToReturn = Map();
    mapToReturn['uid'] = this.uid;
    mapToReturn['nickName'] = this.nickName;
    mapToReturn['highScore'] = this.highScore;
    return mapToReturn;
  }

  User userFromMap(Map<String, dynamic> map) {
    return User(
      uid: map['uid'],
      nickName: map['nickName'],
      highScore: map['highScore'],
    );
  }

}