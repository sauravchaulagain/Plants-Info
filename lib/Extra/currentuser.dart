import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Current extends StatelessWidget {
  final currentUser = FirebaseAuth.instance;
  final String documentID;

  Current({Key? key, required this.documentID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
