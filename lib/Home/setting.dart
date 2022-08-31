import 'package:Plants_Info_final/Login/change_password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Button/floating_action_button.dart';

class setting extends StatefulWidget {
  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Row(children: [
                Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "  Signed in as:",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                      },
                      child: Icon(
                        Icons.logout,
                      ),
                    ),
                  ],
                )
              ]),
              Text(user.email!),
              Divider(
                height: 20,
                thickness: 5,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChangePass()));
                    },
                    child: Text(
                      'Change Password',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_outlined),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChangePass()));
                    },
                    child: Text(
                      'Privacy and Policy',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_outlined),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: floatingbutton(),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
