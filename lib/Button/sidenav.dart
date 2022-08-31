import 'dart:ui';

import 'package:Plants_Info_final/Button/event.dart';
import 'package:Plants_Info_final/Home.dart';
import 'package:Plants_Info_final/Home/contactus.dart';
import 'package:Plants_Info_final/Home/setting.dart';
import 'package:Plants_Info_final/Login/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class sidenav extends StatefulWidget {
  @override
  State<sidenav> createState() => _sidenavState();
}

class _sidenavState extends State<sidenav> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.5)))),
          ListView(
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                    Container(
                      child: InkWell(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person,
                              size: 100,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      user.email!,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 50,
                color: Colors.white,
                thickness: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_page_outlined, color: Colors.white),
                title: Text(
                  "Contact",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => contactUs()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.event_available_sharp,
                  color: Colors.white,
                ),
                title: Text(
                  "Events",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Programs()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: Text(
                  'Setting',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => setting()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  "Log Out",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                },
              ),
              SizedBox(
                height: 230,
              ),
              ListTile(
                title: Text(
                  "Register Now!!",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RegisterPage(showLoginPage: () {})),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
