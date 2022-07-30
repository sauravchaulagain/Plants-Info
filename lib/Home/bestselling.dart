import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:plants_info/Button/floating_action_button.dart';
import 'package:plants_info/Home/plants.dart';
import 'package:plants_info/third.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bestselling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Best selling"),

      ),
      body: Column(
        children: <Widget>[
      Container(
      child: RaisedButton(
          onPressed:(){ Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => plants()),
    );
                },
        child: Image.asset("assets/1.jpg"),

          ),


      ),
      ],

      ),

      );

  }
}