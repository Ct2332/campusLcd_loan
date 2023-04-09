import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';

class AdmLcdDataController extends State<AdmLcdDataView>
    implements MvcController {
  static late AdmLcdDataController instance;
  late AdmLcdDataView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  lcdInputForm() {
    Get.to(const AdmLcdDataFormView());
  }
}
