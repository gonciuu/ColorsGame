import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  FirebaseAuth auth = FirebaseAuth.instance;

  //register user with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      return await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      if (e is PlatformException) {
        return (e).message;
      } else {
        return (e).toString();
      }
    }
  }

  //login user with email and password
  Future loginWithEmailAndPassword(String email, String password) async {
    try {
      return await auth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      if (e is PlatformException) {
        return (e).message;
      } else {
        return e.toString();
      }
    }
  }

  //listen to auth state changes
  Stream<FirebaseUser> get user => auth.onAuthStateChanged;

  //logout
  Future logOut() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      await _googleSignIn.signOut();
      return await auth.signOut();
    } catch (e) {
      if (e is PlatformException) {
        return (e).message;
      } else {
        return e.toString();
      }
    }
  }

  //get user id
  Future getUserId() async {
    try {
      FirebaseUser _currentUser = await auth.currentUser();
      return _currentUser.uid;
    } catch (ex) {
      return null;
    }
  }

  Future loginWithGoogle() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignIn =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.getCredential(
          idToken: googleSignIn.idToken, accessToken: googleSignIn.accessToken);
      return await auth.signInWithCredential(credential);
    } catch (e) {
      print(e);
      return e.toString();
    }
  }
}
