import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';

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
          children: [
            StTopProfile(
              titleContent: controller.currentUser.email,
            ),
            FilledButton(
              onPressed: () => controller.doLogOut(),
              child: const Text(
                "LogOut",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
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
