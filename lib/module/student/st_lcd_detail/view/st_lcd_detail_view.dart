// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/shared/widget/appBar_title/app_bar_title.dart';

import '../controller/st_lcd_detail_controller.dart';

class StLcdDetailView extends StatefulWidget {
  final String scannedData;
  const StLcdDetailView({
    Key? key,
    required this.scannedData,
  }) : super(key: key);

  Widget build(context, StLcdDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: "LCD Detail"),
        leading: IconButton(
          onPressed: () => controller.backToScannerPage(),
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Center(
        child: Text(
          scannedData,
          style: const TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  State<StLcdDetailView> createState() => StLcdDetailController();
}
