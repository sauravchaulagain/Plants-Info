import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Button/silider.dart';
import 'boxes.dart';

class FrontUi extends StatefulWidget {
  const FrontUi({Key? key}) : super(key: key);

  @override
  State<FrontUi> createState() => _FrontUiState();
}

class _FrontUiState extends State<FrontUi> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 8),
          child: Text(
            'Welcome to Plants Info!!',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SliderImage(),
        const Boxes(),
      ],
    );
  }
}
