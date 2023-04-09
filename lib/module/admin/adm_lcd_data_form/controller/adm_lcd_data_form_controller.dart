import 'package:flutter/material.dart';
import 'package:lcd_loan/state_util.dart';
import '../view/adm_lcd_data_form_view.dart';

class AdmLcdDataFormController extends State<AdmLcdDataFormView> implements MvcController {
  static late AdmLcdDataFormController instance;
  late AdmLcdDataFormView view;

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