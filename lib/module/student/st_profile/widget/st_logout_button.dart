// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StLogoutButton extends StatelessWidget {
  final void Function()? onTap;
  const StLogoutButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 65,
      child: FloatingActionButton(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: onTap,
        backgroundColor: Colors.black,
        child: Text(
          "LogOut",
          style: GoogleFonts.openSans(
            fontSize: 13.5,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
