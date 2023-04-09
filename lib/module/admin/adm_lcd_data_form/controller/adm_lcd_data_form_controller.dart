import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lcd_loan/state_util.dart';
import '../view/adm_lcd_data_form_view.dart';

class AdmLcdDataFormController extends State<AdmLcdDataFormView>
    implements MvcController {
  static late AdmLcdDataFormController instance;
  late AdmLcdDataFormView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      lcdId = widget.item!["lcd_id"];
      lcdName = widget.item!["lcd_name"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool get isEditMode {
    return widget.item != null;
  }

  String? lcdId;
  String? lcdName;

  String qrCodeData = 'data';

  doSaveData() async {
    if (isEditMode) {
      //await Save Edited Data
    }
    Map<String, dynamic> lcdData = {
      "lcd_id": lcdId,
      "lcd_name": lcdName,
    };

    qrCodeData = lcdData.toString();
    setState(() {});
    log("Lcd Data = $qrCodeData");
    //else await add new data

    //show dialog data saved
    // Get.back();
  }
}
