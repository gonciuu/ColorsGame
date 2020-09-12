

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class Authentication{

  FirebaseAuth auth = FirebaseAuth.instance;

  Future registerWithEmailAndPassword(String email,String password) async{
    try{
      return await auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      if(e is PlatformException){
        return (e).message;
      }else{
        return (e).toString();
      }
    }
  }

  Future loginWithEmailAndPassword(String email,String password) async{
    try{
      return await auth.signInWithEmailAndPassword(email: email, password: password);
    }catch(e){
      if(e is PlatformException){
        return (e).message;
      }else{
        return e.toString();
      }
    }
  }


}