import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:color_run/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Database {
  final CollectionReference users = Firestore.instance.collection("users");

  //----------------check if user is already in database-----------------------
  Future<bool> checkUserContains(String uid) async {
    try {
      DocumentSnapshot snapshot = await users.document(uid).get();
      if (snapshot.exists) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return null;
    }
  }

  //===========================================================================

  //-------------insert user to database-----------------
  Future insertUser(Map<String, dynamic> userMap) async {
    try {
      return await users.document(userMap['uid']).setData(userMap);
    } catch (e) {
      return null;
    }
  }

  //======================================================

  //------------------get user full object from database--------------------
  Future<User> getUserInfo(String uid) async {
    try {
      DocumentSnapshot snapshot = await users.document(uid).get();
      User user = User(uid: null, nickName: null, highScore: null);
      return user.userFromMap(snapshot.data);
    } catch (e) {
      return null;
    }
  }

  //----------------------update just nick of user----------------------
  Future updateNick(String newNick, String uid) async {
    try {
      return await users.document(uid).updateData({"nickName": newNick});
    } catch (e) {
      return e.toString();
    }
  }

  //----------------------update just high score of user----------------------
  Future updateHighScore(int newHighScore, String uid) async {
    try {
      DocumentSnapshot snapshot = await users.document(uid).get();
      if (newHighScore > int.parse((snapshot.data['highScore']).toString())) {

        return await users
            .document(uid)
            .updateData({"highScore": newHighScore});
      } else {
        print("NIE WIEKSZY REKORD");
        return null;
      }
    } catch (e) {
      print("ERROR $e");
      return e.toString();
    }
  }

  //--------------------get all users top 10 list from firestore---------------------------
  List<User> _usersListFromSnapshot(QuerySnapshot snapshot) {
    List<User> usersList = snapshot
        .documents
        .map((userMap) =>
        User(nickName: "", uid: "", highScore: 0).userFromMap(userMap.data))
        .toList();
    return usersList.length > 10 ? usersList.sublist(0,10) : usersList;
  }



  //-----------------------all users stream--------------------------
  Stream<List<User>> get allUsers =>
      users.orderBy("highScore",descending: true).snapshots().map(_usersListFromSnapshot);


  //-----------------------------get user position in all player high scores--------------------------
  Stream<int> userPosition(String uid){
    return  users.orderBy("highScore",descending: true).snapshots().map((snapshot){
      return snapshot
          .documents
          .map((userMap) => userMap.data['uid']).toList().indexOf(uid) + 1;
    });
  }

}
