import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:plants_info/Button/nav_button/search.dart';

import 'package:plants_info/boilerplate.dart';
import 'package:plants_info/front_page.dart';

import 'package:plants_info/third.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite"),

      ),
      body: Container(
        child: Text("This is Favorite page"),

      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.grey.shade200,
        color: Colors.black,
        activeColor: Colors.blue,
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => home()),
              );
            },
          ),
          GButton(
            icon: Icons.favorite_border,
            text: "Favorite",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => favorite()),
              );
            },
          ),
          GButton(
            icon: Icons.search,
            text: "Search",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => search()),
              );
            },
          ),
          GButton(
            icon: Icons.settings,
            text: "Setting",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => setting()),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.messenger,
        ),
      ),
    );
  }
}