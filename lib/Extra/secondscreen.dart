import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("next page"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.deepPurple,
            padding: EdgeInsets.all(50),
            child: Text("hello"),
          ),

        ],
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.grey.shade200,
        color: Colors.red,
        activeColor: Colors.green.shade100,
        tabBackgroundColor: Colors.deepPurple,
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.favorite_border,
            text: "Favorite",
          ),
          GButton(
            icon: Icons.search,
            text: "Search",
          ),
          GButton(
            icon: Icons.settings,
            text: "Setting",
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
