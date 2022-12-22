import 'dart:ui';

import 'package:Plants_Info_final/Home.dart';
import 'package:Plants_Info_final/Home/contactus.dart';
import 'package:Plants_Info_final/Home/event.dart';
import 'package:Plants_Info_final/Home/setting.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SideNav extends StatefulWidget {
  const SideNav({super.key});

  @override
  State<SideNav> createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
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
              Column(
                children: [
                  InkWell(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: const CircleAvatar(
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
                  Text(
                    user.email!,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const Divider(
                height: 50,
                color: Colors.white,
                thickness: 2,
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: const Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.contact_page_outlined,
                    color: Colors.white),
                title: const Text(
                  "Contact",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactUs()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.event_available_sharp,
                  color: Colors.white,
                ),
                title: const Text(
                  "Events",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Programs()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: const Text(
                  'Setting',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Setting()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: const Text(
                  "Log Out",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
