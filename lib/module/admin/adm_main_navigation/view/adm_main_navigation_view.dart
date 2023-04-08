import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import '../controller/adm_main_navigation_controller.dart';

class AdmMainNavigationView extends StatefulWidget {
  const AdmMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, AdmMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("AdmMainNavigation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<AdmMainNavigationView> createState() => AdmMainNavigationController();
}