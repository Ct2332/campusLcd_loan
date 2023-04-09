import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AdmLcdCard extends StatelessWidget {
  const AdmLcdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            offset: const Offset(2, 5),
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/projector.svg',
            height: 45,
            colorFilter: ColorFilter.mode(
              Colors.indigoAccent[100]!,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "LCD 01",
                style: GoogleFonts.openSans(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "Id : 12312312312",
                style: GoogleFonts.openSans(
                  fontSize: 15.0,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
