

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class Authentication{

  FirebaseAuth auth = FirebaseAuth.instance;

  //register user with email and password
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
  //login user with email and password
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

  //listen to auth state changes
  Stream<FirebaseUser> get user => auth.onAuthStateChanged;

  //logout
  Future logOut() async{
    try{
      return await auth.signOut();
    }catch(e){
      if(e is PlatformException){
        return (e).message;
      }else{
        return e.toString();
      }
    }
  }

}