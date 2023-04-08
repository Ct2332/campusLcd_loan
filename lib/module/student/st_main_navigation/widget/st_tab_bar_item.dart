import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lcd_loan/shared/theme/color_theme.dart';

stTabBarItem({
  required String iconUrl,
  required String title,
}) {
  return FlashyTabBarItem(
    activeColor: Colors.indigo,
    icon: SvgPicture.asset(
      'assets/icons/$iconUrl',
      height: 18,
      colorFilter: ColorFilter.mode(
        Colors.indigo.withOpacity(0.4),
        BlendMode.srcIn,
      ),
    ),
    title: Text(
      title,
      style: GoogleFonts.openSans(
        fontSize: 13.5,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
