// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AtTextField extends StatelessWidget {
  final String? hint;
  final String iconUrl;
  const AtTextField({
    Key? key,
    this.hint,
    required this.iconUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.blueGrey.withOpacity(0.06),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 5),
            child: SvgPicture.asset(
              'assets/icons/$iconUrl',
              height: 18,
              colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hint ?? 'Nama Lengkap',
                hintStyle: GoogleFonts.openSans(fontSize: 15),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
