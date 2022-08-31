import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUserName extends StatelessWidget {
  final String documentID;
  GetUserName({required this.documentID});
  @override
  Widget build(BuildContext context) {
    CollectionReference user = FirebaseFirestore.instance.collection('user');
    return FutureBuilder<DocumentSnapshot>(
        future: user.doc(documentID).get(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Column(
              children: [
                Text('name ${data['first name']}' +
                    ' ' +
                    '${data['last name']}'),
                Text('email ${data['email']}'),
                Text('phone ${data['contact no']}'),
              ],
            );
          }
          return Text('Loading');
          ;
        }));
  }
}