import 'package:Plants_Info_final/Extra/userdata.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final user = FirebaseAuth.instance.currentUser;
  List<String> ids = [];
  Future getids() async {
    await FirebaseFirestore.instance
        .collection('user')
        .get()
        .then((snapshot) => snapshot.docs.forEach((element) {
              print(element.reference);
              ids.add(element.reference.id);
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: FutureBuilder(
        future: getids(),
        builder: (context, snapshots) {
          return ListView.builder(
              itemCount: ids.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: GetUserName(
                  documentID: ids[index],
                ));
              });
        },
      )),
    );
  }
}
