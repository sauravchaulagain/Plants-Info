import 'package:Plants_Info_final/Home/setting.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../Home.dart';
import '../../Home/aboutus.dart';
import 'favorite.dart';

class buttonNav extends StatefulWidget {
  const buttonNav({Key? key}) : super(key: key);

  @override
  State<buttonNav> createState() => _buttonNavState();
}

class _buttonNavState extends State<buttonNav> {
  @override
  Widget build(BuildContext context) {
    return GNav(
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
              MaterialPageRoute(builder: (context) => Home()),
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
            icon: Icons.call,
            text: "Contact",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => aboutus(),
                  ));
            }),
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
    );
  }
}

class floatingButton extends StatefulWidget {
  const floatingButton({Key? key}) : super(key: key);

  @override
  State<floatingButton> createState() => _floatingButtonState();
}

class _floatingButtonState extends State<floatingButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.messenger,
      ),
    );
  }
}
