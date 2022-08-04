import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:plants_info/Button/nav_button/favorite.dart';
import 'package:plants_info/Button/nav_button/search.dart';
import 'package:plants_info/Button/side_nav/sidenav.dart';
import 'package:plants_info/Home/Indoorplants.dart';
import 'package:plants_info/Home/aboutus.dart';
import 'package:plants_info/Home/extra.dart';
import 'package:plants_info/Home/outdoorplant.dart';
import 'package:plants_info/boilerplate.dart';


class home extends StatefulWidget {

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sidenav(),
      appBar: AppBar(
        title: Text(
          "Plants Info",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40, 30, 40),
        child: ListView(
          children: [
            Container(
              child: Text("hello"),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200.0,
              width: 250.0,
              child: Carousel(
                images: [
                  InkWell(
                    child: Image.asset("assets/01.jpg"),
                    onDoubleTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => outdoorplant()),
                      );
                    },
                  ),
                  AssetImage(
                    "assets/1.jpg",
                  ),
                  AssetImage("assets/2.jpg"),
                  AssetImage("assets/3.jpg"),
                  AssetImage("assets/4.jpg"),
                  AssetImage("assets/5.jpg"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IndoorPlant()),
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
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => outdoorplant()),
                      );
                    },
                    child: Text(
                      "Outdoor Plants",
                      style: TextStyle(fontSize: 15),
                    ),
                    padding: EdgeInsets.all(30),
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginpage()),
                      );
                    },
                    child: Text(
                      "Extra",
                      style: TextStyle(fontSize: 15),
                    ),
                    padding: EdgeInsets.fromLTRB(60, 30, 60, 30),
                    color: Colors.orange,
                  ),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => aboutus()),
                      );
                    },
                    child: Text(
                      "About us",
                      style: TextStyle(fontSize: 15),
                    ),
                    padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
                    color: Colors.orange,
                  ),
                ),
              ],
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
