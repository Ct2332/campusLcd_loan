import 'package:flutter/material.dart';
import 'package:lcd_loan/state_util.dart';
import '../view/adm_lcd_data_view.dart';

class AdmLcdDataController extends State<AdmLcdDataView> implements MvcController {
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
}