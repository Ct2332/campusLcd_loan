import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';

class StLcdDetailController extends State<StLcdDetailView>
    implements MvcController {
  static late StLcdDetailController instance;
  late StLcdDetailView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  backToScannerPage() {
    log("Back to Scanner Page");
    Get.offAll(const StScannerView());
  }
}
