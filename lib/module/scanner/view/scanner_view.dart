import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import '../controller/scanner_controller.dart';

class ScannerView extends StatefulWidget {
  const ScannerView({Key? key}) : super(key: key);

  Widget build(context, ScannerController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Scanner"),
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
  State<ScannerView> createState() => ScannerController();
}