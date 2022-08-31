import 'package:Plants_Info_final/Home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class contactUs extends StatefulWidget {
  const contactUs({Key? key}) : super(key: key);

  @override
  State<contactUs> createState() => _contactUsState();
}

class _contactUsState extends State<contactUs> {
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final commentcontroller = TextEditingController();
  @override
  void dispose() {
    namecontroller.dispose();
    emailcontroller.dispose();
    commentcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(color: Colors.cyan),
                        borderRadius: BorderRadius.circular(22)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Details',
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Plants Info',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Social Media:',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: size.height * 0.075,
                            width: size.width * 0.8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () async {
                                      const url =
                                          'https://www.facebook.com/profile.php?id=100082619644241';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    icon: Icon(FontAwesomeIcons.facebook),
                                  ), //FontAwesomeIcons.facebook)),
                                  IconButton(
                                    onPressed: () async {
                                      const url =
                                          'https://github.com/sauravchaulagain';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    icon: Icon(FontAwesomeIcons.github),
                                  ),
                                  IconButton(
                                      onPressed: () async {
                                        const url =
                                            'https://www.linkedin.com/in/saurav-chaulagain-aa368b234/';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      icon: Icon(FontAwesomeIcons.linkedin)),
                                  IconButton(
                                      onPressed: () async {
                                        const url =
                                            'https://mail.google.com/mail/u/1/#inbox/';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      icon: Icon(Icons.ac_unit_outlined)),
                                  IconButton(
                                      onPressed: () async {
                                        const url = 'https://www.facebook.com/';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      icon: Icon(Icons.abc)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: size.height * 0.5,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.cyan),
                        borderRadius: BorderRadius.circular(22)),
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Column(
                        children: [
                          Text(
                            'Any Questions?',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              controller: namecontroller,
                              decoration:
                                  const InputDecoration(hintText: "Name"),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              controller: emailcontroller,
                              decoration:
                                  const InputDecoration(hintText: "Email"),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              controller: commentcontroller,
                              decoration: const InputDecoration(
                                  hintText: "Any Message?"),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
