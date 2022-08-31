import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../plants.dart';

class IndoorPlant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SnakePlant(),
                ),
              );
            },
            child: Container(
              height: size.height * 0.2,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.05), blurRadius: 15),
                ],
                border: Border.all(color: Colors.purpleAccent),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 12),
                      child: Column(children: [
                        Text(
                          'Snake Plant',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: size.height * 0.0075,
                        ),
                        Text(
                          'lucky bamboo sdsadsa dbas fa idsufdhsf dsf dsghfvds fsdhfghdsgfds fsdh',
                          style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(fontSize: 15, color: Colors.blue),
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height * 0.25,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/snakeplant.jpg'),
                            fit: BoxFit.cover),
                        //border:                                          Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PeaceLily(),
                ),
              );
            },
            child: Container(
              height: size.height * 0.2,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.05), blurRadius: 15),
                ],
                border: Border.all(color: Colors.purpleAccent),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height * 0.25,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/peacelilly.jpg'),
                            fit: BoxFit.cover),
                        //border:                                          Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 12),
                      child: Column(children: [
                        Text(
                          'Peace Lily',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: size.height * 0.0075,
                        ),
                        Text(
                          'lucky bamboo sdsadsa dbas fa idsufdhsf dsf dsghfvds fsdhfghdsgfds fsdh',
                          style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(fontSize: 15, color: Colors.blue),
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ZzPlant(),
                ),
              );
            },
            child: Container(
              height: size.height * 0.2,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.05), blurRadius: 15),
                ],
                border: Border.all(color: Colors.purpleAccent),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 12),
                      child: Column(children: [
                        Text(
                          'Zz Plant',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: size.height * 0.0075,
                        ),
                        Text(
                          'lucky bamboo sdsadsa dbas fa idsufdhsf dsf dsghfvds fsdhfghdsgfds fsdh',
                          style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(fontSize: 15, color: Colors.blue),
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height * 0.25,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Zzplant.jpg'),
                            fit: BoxFit.cover),
                        //border:                                          Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ParlorPalm(),
                ),
              );
            },
            child: Container(
              height: size.height * 0.2,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.05), blurRadius: 15),
                ],
                border: Border.all(color: Colors.purpleAccent),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height * 0.25,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/parlorpalm.jpg'),
                            fit: BoxFit.cover),
                        //border:                                          Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 12),
                      child: Column(children: [
                        Text(
                          'Parlor Plam',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: size.height * 0.0075,
                        ),
                        Text(
                          'lucky bamboo sdsadsa dbas fa idsufdhsf dsf dsghfvds fsdhfghdsgfds fsdh',
                          style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(fontSize: 15, color: Colors.blue),
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Anthurium(),
                ),
              );
            },
            child: Container(
              height: size.height * 0.2,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.05), blurRadius: 15),
                ],
                border: Border.all(color: Colors.purpleAccent),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 12),
                      child: Column(children: [
                        Text(
                          'Anthurium',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: size.height * 0.0075,
                        ),
                        Text(
                          'lucky bamboo sdsadsa dbas fa idsufdhsf dsf dsghfvds fsdhfghdsgfds fsdh',
                          style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(fontSize: 15, color: Colors.blue),
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height * 0.25,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Anthurium.jpg'),
                            fit: BoxFit.cover),
                        //border:                                          Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LuckyBamboo(),
                ),
              );
            },
            child: Container(
              height: size.height * 0.2,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.05), blurRadius: 15),
                ],
                border: Border.all(color: Colors.purpleAccent),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height * 0.25,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/luckybamboo.jpg'),
                            fit: BoxFit.cover),
                        //border:                                          Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 12),
                      child: Column(children: [
                        Text(
                          'Lucky Bamboo',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: size.height * 0.0075,
                        ),
                        Text(
                          'lucky bamboo sdsadsa dbas fa idsufdhsf dsf dsghfvds fsdhfghdsgfds fsdh',
                          style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(fontSize: 15, color: Colors.blue),
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SpiderPlant(),
                ),
              );
            },
            child: Container(
              height: size.height * 0.2,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.05), blurRadius: 15),
                ],
                border: Border.all(color: Colors.purpleAccent),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 12),
                      child: Column(children: [
                        Text(
                          'Spider Plant',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: size.height * 0.0075,
                        ),
                        Text(
                          'lucky bamboo sdsadsa dbas fa idsufdhsf dsf dsghfvds fsdhfghdsgfds fsdh',
                          style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(fontSize: 15, color: Colors.blue),
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height * 0.25,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Spider_Plant.jpg'),
                            fit: BoxFit.cover),
                        //border:                                          Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArrowHead(),
                ),
              );
            },
            child: Container(
              height: size.height * 0.2,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.05), blurRadius: 15),
                ],
                border: Border.all(color: Colors.purpleAccent),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height * 0.25,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/arrrowhead.jpg'),
                            fit: BoxFit.cover),
                        //border:                                          Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 12),
                      child: Column(children: [
                        Text(
                          'Arrow Head',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: size.height * 0.0075,
                        ),
                        Text(
                          'lucky bamboo sdsadsa dbas fa idsufdhsf dsf dsghfvds fsdhfghdsgfds fsdh',
                          style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(fontSize: 15, color: Colors.blue),
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Arecapalm(),
                ),
              );
            },
            child: Container(
              height: size.height * 0.2,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.05), blurRadius: 15),
                ],
                border: Border.all(color: Colors.purpleAccent),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 12),
                      child: Column(children: [
                        Text(
                          'Areca Palm',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: size.height * 0.0075,
                        ),
                        Text(
                          'lucky bamboo sdsadsa dbas fa idsufdhsf dsf dsghfvds fsdhfghdsgfds fsdh',
                          style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(fontSize: 15, color: Colors.blue),
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height * 0.25,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/arecaplam.jpg'),
                            fit: BoxFit.cover),
                        //border:                                          Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChristmasCactus(),
                ),
              );
            },
            child: Container(
              height: size.height * 0.2,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.05), blurRadius: 15),
                ],
                border: Border.all(color: Colors.purpleAccent),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height * 0.25,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/christmascactus.jpg'),
                            fit: BoxFit.cover),
                        //border:                                          Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 12),
                      child: Column(children: [
                        Text(
                          'Christmas Cactus',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: size.height * 0.0075,
                        ),
                        Text(
                          'lucky bamboo sdsadsa dbas fa idsufdhsf dsf dsghfvds fsdhfghdsgfds fsdh',
                          style: GoogleFonts.roboto(
                            textStyle:
                                TextStyle(fontSize: 15, color: Colors.blue),
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
        ],
      ),
    );
  }
}
