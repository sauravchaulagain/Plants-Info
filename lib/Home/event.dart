import 'package:Plants_Info_final/auth/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Programs extends StatelessWidget {
  const Programs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Image.asset(
                'assets/10172651_8347.jpg',
                height: 250,
              ),
              Text(
                'NO UPCOMING EVENTS',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'We will infrom you about any upcomming events. \n\n STAY TUNED FOR MORE.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'hello',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 70),
              GoHome()
            ],
          ),
        ),
      ),
    );
  }
}

class GoHome extends StatelessWidget {
  const GoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MainPage(),
            ));
      },
      child: Container(
        height: 40,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: Colors.greenAccent),
        child: Center(
          child: Text(
            'Home',
            style: TextStyle(
              fontFamily: 'hello',
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
