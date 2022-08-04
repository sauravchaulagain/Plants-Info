import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plants_info/models/user.dart';

class Authservice {
  final FirebaseAuth _auth= FirebaseAuth.instance;

  //create user object
  User _userFromFirebaseUser (User user){
    return user != null ?  UserModal(uid: user.uid):  ;


  }

  //sign  in as guest
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously() ;
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//sign in with email and password

//register with email and password

//sign out

}
