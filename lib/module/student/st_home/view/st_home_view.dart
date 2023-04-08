import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/module/student/st_home/widget/st_scanner_button.dart';
import 'package:lcd_loan/module/student/st_home/widget/st_top_profile.dart';
import '../controller/st_home_controller.dart';

class StHomeView extends StatefulWidget {
  const StHomeView({Key? key}) : super(key: key);

  Widget build(context, StHomeController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(
          top: 45,
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: const [
            StTopProfile(),
          ],
        ),
      ),
      floatingActionButton: StScannerButton(
        onTap: () => controller.scanQrCode(),
      ),
    );
  }

  @override
  State<StHomeView> createState() => StHomeController();
}
