
class User {
  String uid;
  String nickName;

  User({this.nickName, this.uid});


  Map<String, dynamic> userMap() {
    Map<String, dynamic> mapToReturn = Map();
    mapToReturn['uid'] = this.uid;
    mapToReturn['nickName'] = this.nickName;
    return mapToReturn;
  }

  User highScoreFromMap(Map<String, dynamic> map) {
    return User(
      uid: map['uid'],
      nickName: map['nickName'],
    );
  }

}