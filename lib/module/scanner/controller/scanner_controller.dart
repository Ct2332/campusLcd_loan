import 'package:flutter/material.dart';
import 'package:lcd_loan/state_util.dart';
import '../view/scanner_view.dart';

class ScannerController extends State<ScannerView> implements MvcController {
  static late ScannerController instance;
  late ScannerView view;

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