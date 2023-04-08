import 'package:flutter/material.dart';
import 'package:lcd_loan/state_util.dart';
import '../view/history_view.dart';

class HistoryController extends State<HistoryView> implements MvcController {
  static late HistoryController instance;
  late HistoryView view;

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