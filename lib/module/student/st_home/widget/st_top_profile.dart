// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lcd_loan/shared/widget/cached_image/cached_image.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../shared/util/custom_cache_manager/custom_cache_manager.dart';

class StTopProfile extends StatelessWidget {
  final String? imgUrl;
  const StTopProfile({
    Key? key,
    this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const WdCachedImage(
          size: 40,
          borderRadius: 20,
        ),
        const SizedBox(width: 10),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey",
              style: GoogleFonts.openSans(
                height: 1,
                fontSize: 13,
                color: Colors.grey[400],
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Rely Arfadillah",
              style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
