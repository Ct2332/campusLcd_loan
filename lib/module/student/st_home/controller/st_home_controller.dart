import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
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

  final currentUser = FirebaseAuth.instance.currentUser!;

  scanQrCode() {
    Get.to(const StScannerView());
  }

  doLogOut() async {
    log("Logged Out");
    await FirebaseAuth.instance.signOut();
    log("To Login Page");
    Get.offAll(const LoginView());
  }
}
