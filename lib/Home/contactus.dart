import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu.jpg',
                  ),
                  fit: BoxFit.cover,
                  opacity: 100)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(children: [
              Text(
                "LET'S KEEP IN TOUCH",
                style: TextStyle(
                  fontFamily: 'hello',
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.person,
                    color: Colors.orange,
                    size: 50,
                  ),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Saurav Chaulagain",
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.phone,
                    color: Colors.orange,
                    size: 50,
                  ),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Phone",
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "+977-9866556708",
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.attach_email_outlined,
                    color: Colors.orange,
                    size: 50,
                  ),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "sauravchaulagain39@gmail.com",
                        style: TextStyle(
                          fontFamily: 'hello',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 200),
              social(),
            ]),
          ),
        ),
      ),
    );
  }

  social() {
    return Container(
      color: Colors.white30,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Social',
              style: TextStyle(
                fontFamily: 'hello',
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                const url =
                    'https://www.facebook.com/profile.php?id=100082619644241';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.facebook),
                  Text(
                    '  Facebook',
                    style: TextStyle(
                      fontFamily: 'hello',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                const url = 'https://github.com/sauravchaulagain';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.github),
                  Text(
                    '  Github',
                    style: TextStyle(
                      fontFamily: 'hello',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                const url =
                    'https://www.linkedin.com/in/saurav-chaulagain-aa368b234/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.linkedin),
                  Text(
                    '  Linkedin',
                    style: TextStyle(
                      fontFamily: 'hello',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                const url = 'https://sauravchaulagain.github.io/#/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Row(
                children: [
                  Icon(CupertinoIcons.link),
                  Text(
                    '  Website',
                    style: TextStyle(
                      fontFamily: 'hello',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
