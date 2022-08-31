import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Programs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Image.asset('assets/noevent.jpg')),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sorry!! There is no event for you now.',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
