import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AtTitle extends StatelessWidget {
  const AtTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Registration",
          style: GoogleFonts.openSans(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Please register down below",
          style: GoogleFonts.openSans(
            fontSize: 13,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
