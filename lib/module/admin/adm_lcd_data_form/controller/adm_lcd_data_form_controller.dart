import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lcd_loan/services/lcd_services/lcd_service.dart';
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
      docId = widget.item!["id"];
      lcdId = widget.item!["lcd_id"];
      lcdName = widget.item!["lcd_name"];
      lcdData = {
        "lcd_id": lcdId,
        "lcd_name": lcdName,
      };
      qrCodeData = lcdData.toString();
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

  String? docId;
  String? lcdId;
  String? lcdName;

  Map? lcdData;
  String qrCodeData = 'data';

  doSaveData() async {
    if (isEditMode) {
      await LcdService.updateData(
        lcdId: lcdId!,
        lcdName: lcdName!,
        docId: docId!,
      );
      log("Edit Data");
      lcdData = {
        "lcd_id": lcdId,
        "lcd_name": lcdName,
      };
      qrCodeData = lcdData.toString();
      log("Lcd Data = $qrCodeData");
      Get.back();
    }
    //else await add new data
    await LcdService.addData(
      lcdId: lcdId!,
      lcdName: lcdName!,
    );
    log("New Data Added");

    lcdData = {
      "lcd_id": lcdId,
      "lcd_name": lcdName,
    };
    qrCodeData = lcdData.toString();
    log("Lcd Data = $qrCodeData");

    setState(() {});

    //show dialog data saved
    Get.back();
  }

  deleteData() async {
    await LcdService.deleteData(docId: docId!);
    log("Data Deleted....\nNavigate Back");
    Get.back();
  }
}
