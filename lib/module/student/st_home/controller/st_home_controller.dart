import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';

class StHomeController extends State<StHomeView> implements MvcController {
  static late StHomeController instance;
  late StHomeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  scanQrCode() {
    Get.to(const StScannerView());
  }
}
