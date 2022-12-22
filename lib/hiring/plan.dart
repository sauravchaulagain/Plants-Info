import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Plan extends StatelessWidget {
  CollectionReference order = FirebaseFirestore.instance.collection('order');
  late String textName;
  late String textLocation;
  late int textNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextField(
              onChanged: (value) {
                textName = value;
              },
              decoration: InputDecoration(hintText: 'name'),
            ),
            SizedBox(height: 50),
            TextField(
              onChanged: (value) {
                // textNumber = userNo;
              },
              decoration: InputDecoration(hintText: 'name'),
            ),
            SizedBox(height: 50),
            TextField(
              onChanged: (value) {
                textLocation = value;
              },
              decoration: InputDecoration(hintText: 'name'),
            ),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: () async {
                  await order.add({
                    'name': 'name',
                    'contact': 9866556708,
                    'location': textLocation,
                  }).then((value) => print('user added'));
                },
                child: Text('Submit'))
          ],
        ));
  }
}
