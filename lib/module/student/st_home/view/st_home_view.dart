import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import '../controller/st_home_controller.dart';

class StHomeView extends StatefulWidget {
  const StHomeView({Key? key}) : super(key: key);

  Widget build(context, StHomeController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(
          top: 35,
          left: 20,
          right: 20,
        ),
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }

  @override
  State<StHomeView> createState() => StHomeController();
}
