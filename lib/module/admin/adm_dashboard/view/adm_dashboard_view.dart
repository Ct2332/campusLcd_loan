import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/shared/widget/appBar_title/app_bar_title.dart';

class AdmDashboardView extends StatefulWidget {
  const AdmDashboardView({Key? key}) : super(key: key);

  Widget build(context, AdmDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Admin Dashboard'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            StTopProfile(
              title: 'Nama Admin',
              titleContent: 'Muh. Fulan S.Kom',
              subContent: 'NIP Admin',
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<AdmDashboardView> createState() => AdmDashboardController();
}
