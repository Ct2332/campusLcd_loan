import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/module/student/st_home/widget/st_home_app_bar.dart';
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
    );
  }

  @override
  State<StHomeView> createState() => StHomeController();
}
