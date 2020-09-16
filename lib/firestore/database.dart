
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:color_run/models/user.dart';

class Database{

  final CollectionReference users = Firestore.instance.collection("users");


  Future<bool> checkUserContains(String uid) async{
    try{
      DocumentSnapshot snapshot = await users.document(uid).get();
      if(snapshot.exists){
        return true;
      }
      else{
        return false;
      }
    }catch(e){
      return null;
    }

  }





}