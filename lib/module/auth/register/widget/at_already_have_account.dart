// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AtAlreadyHaveAccount extends StatelessWidget {
  final void Function()? onTap;
  const AtAlreadyHaveAccount({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Sudah punya akun? ",
          style: GoogleFonts.openSans(
            fontSize: 13.5,
          ),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            "Login disini",
            style: GoogleFonts.openSans(
              fontSize: 13.5,
              color: Colors.indigo,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
