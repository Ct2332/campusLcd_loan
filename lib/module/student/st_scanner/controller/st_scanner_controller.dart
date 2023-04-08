import 'package:flutter/material.dart';
import 'package:lcd_loan/state_util.dart';
import '../view/st_scanner_view.dart';

class StScannerController extends State<StScannerView> implements MvcController {
  static late StScannerController instance;
  late StScannerView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}