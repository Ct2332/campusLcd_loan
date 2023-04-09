import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';

class AdmLcdDataController extends State<AdmLcdDataView>
    implements MvcController {
  static late AdmLcdDataController instance;
  late AdmLcdDataView view;

  @override
  void initState() {
    instance = this;
    log("Lcd List Page");
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  //add data
  lcdInputForm() {
    log("Navigate to Lcd Input Form");
    Get.to(const AdmLcdDataFormView());
  }

  //edit data
  lcdEditForm({required Map item}) {
    log("Navigate to Lcd Edit Form");
    Get.to(
      AdmLcdDataFormView(
        item: item,
      ),
    );
  }
}
