import 'package:Plants_Info_final/hiring/hiring.dart';
import 'package:Plants_Info_final/indoor/indoorplant_decoration.dart';
import 'package:Plants_Info_final/outdoor/outdoorplant_decoration.dart';
import 'package:flutter/material.dart';

import 'contactus.dart';

class Boxes extends StatelessWidget {
  const Boxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * 0.45,
          height: size.height * 0.6,
          decoration: const BoxDecoration(
              // border: Border.all(color: Colors.black26),
              ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IndoorPlantD(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.250,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 15),
                        ],
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: size.height * 0.23,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/02.jpg'),
                                    fit: BoxFit.cover),
                                //border:                                          Border.all(color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Indoor Plant',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.040,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Hiring(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.250,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 15),
                        ],
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              // height: size.height * 0.250,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/about.jpg'),
                                    fit: BoxFit.cover),
                                //border:                                          Border.all(color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Hire',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: size.width * 0.45,
          height: size.height * 0.64,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OutdoorPlantD(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.250,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 15),
                        ],
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              // height: size.height * 0.250,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/outdoorplant.jpg'),
                                    fit: BoxFit.cover),
                                //border:                                          Border.all(color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Outdoor Plant',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactUs(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.250,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 15),
                        ],
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              // height: size.height * 0.250,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/contact.jpg'),
                                    fit: BoxFit.cover),
                                //border:                                          Border.all(color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Contact Us',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
