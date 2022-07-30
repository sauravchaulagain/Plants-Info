import 'package:flutter/material.dart';
import 'package:plants_info/Button/nav_button/favorite.dart';
import 'package:plants_info/Button/nav_button/search.dart';
import 'package:plants_info/Home/bestselling.dart';
import 'package:plants_info/boilerplate.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:plants_info/secondscreen.dart';
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Plants Info',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40, 30, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
            ),
            Container(
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => bestselling()),
                  );
                },
                child: Text(
                  "BEST SELLING",
                  style: TextStyle(fontSize: 15),
                ),
                padding: EdgeInsets.fromLTRB(130.0, 70.0, 0.0, 70),
                color: Colors.orange,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => screen()),
                      );
                    },
                    child: Text(
                      "Indoor Plants",
                      style: TextStyle(fontSize: 15),
                    ),
                    padding: EdgeInsets.all(30),
                    color: Colors.orange,
                  ),
                ),
                Container(
                  child: Text(
                    "Outdoor Plants",
                    style: TextStyle(fontSize: 15),
                  ),
                  padding: EdgeInsets.all(30),
                  color: Colors.orange,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(7),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Text(
                    "Extra ",
                    style: TextStyle(fontSize: 15),
                  ),
                  padding: EdgeInsets.all(30),
                  color: Colors.orange,
                ),
                Container(
                  child: Text(
                    "About Us ",
                    style: TextStyle(fontSize: 15),
                  ),
                  padding: EdgeInsets.all(30),
                  color: Colors.orange,
                ),
              ],
            ),
            Container(
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => screen()),
                  );
                },
                child: Text("go to next page"),
              ),
            ),
          ],
        ),
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
