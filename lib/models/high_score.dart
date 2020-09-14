class HighScore {
  String id;
  String userUid;
  String userNick;
  int score;

  HighScore({this.userUid, this.score, this.userNick, this.id});

  Map<String, dynamic> highScoreMap() {
    Map<String, dynamic> mapToReturn = Map();
    mapToReturn['userUid'] = this.userUid;
    mapToReturn['id'] = this.id;
    mapToReturn['userNick'] = this.userNick;
    mapToReturn['score'] = this.score;
    return mapToReturn;
  }

  HighScore highScoreFromMap(Map<String, dynamic> map) {
    return HighScore(
        userUid: map['userUid'],
        score: map['score'],
        id: map['id'],
        userNick: map['userNick']);
  }
}
