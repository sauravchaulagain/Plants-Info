import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:plants_info/third.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),

      ),
      body: Container(
        child: Text("This is Search page"),

      ),
    );
  }
}