import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import '../controller/st_scanner_controller.dart';

class StScannerView extends StatefulWidget {
  const StScannerView({Key? key}) : super(key: key);

  Widget build(context, StScannerController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("StScanner"),
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
  State<StScannerView> createState() => StScannerController();
}