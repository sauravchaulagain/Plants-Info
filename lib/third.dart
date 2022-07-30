import 'package:flutter/material.dart';

class green extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("next page"),
    ),
    body: Column(
    children: <Widget>[

    Container(
    color: Colors.red,
    padding: EdgeInsets.all(50),
    child: Text("# rd page"),
    ),
    ],
    ),
    );
  }
}
