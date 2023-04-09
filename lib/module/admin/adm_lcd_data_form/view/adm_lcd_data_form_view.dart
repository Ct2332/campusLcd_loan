import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import '../controller/adm_lcd_data_form_controller.dart';

class AdmLcdDataFormView extends StatefulWidget {
  const AdmLcdDataFormView({Key? key}) : super(key: key);

  Widget build(context, AdmLcdDataFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("AdmLcdDataForm"),
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
  State<AdmLcdDataFormView> createState() => AdmLcdDataFormController();
}