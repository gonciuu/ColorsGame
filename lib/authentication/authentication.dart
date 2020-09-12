

import 'package:firebase_auth/firebase_auth.dart';

class Authentication{

  FirebaseAuth auth = FirebaseAuth.instance;

  Future registerWithEmailAndPassword(String email,String password) async{
    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      print(e);
    }
  }


}