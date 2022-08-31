import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Button/nav_button/favorite.dart';
import '../plants.dart';

class outdoorplant extends StatefulWidget {
  @override
  State<outdoorplant> createState() => _outdoorplantState();
}

class _outdoorplantState extends State<outdoorplant> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => plant(),
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
                            'Luck Bamboo',
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
                              image: AssetImage('assets/1.jpg'),
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
                    builder: (context) => favorite(),
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
                              image: AssetImage('assets/1.jpg'),
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
                    builder: (context) => favorite(),
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
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height * 0.25,
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/1.jpg'),
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
                    builder: (context) => favorite(),
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
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: size.height * 0.25,
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/1.jpg'),
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
                    builder: (context) => favorite(),
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
                              image: AssetImage('assets/1.jpg'),
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
          ],
        ),
      ),
    );
  }
}
