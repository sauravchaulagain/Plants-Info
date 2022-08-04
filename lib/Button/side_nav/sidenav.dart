import 'package:flutter/material.dart';

class sidenav extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueAccent,
        child:
        ListView(
          children: <Widget>[
        InkWell(
           child:Container(
            padding: EdgeInsets.symmetric(vertical: 50),
        child: Row(
        children: [


    CircleAvatar(radius:30,backgroundImage: AssetImage("assets/3.jpg",),
            ),
    ],
            ),
            ),
          ),



          ListTile(
            leading: Icon(Icons.home),
        title: Text("Home"),
        ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text("Fav"),
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("Search"            ),



        )
     ],
        ),
      ),


    );
  }
}


