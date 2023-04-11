import 'dart:async';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lcd_loan/core.dart';

class EmailVerificationController extends State<EmailVerificationView>
    implements MvcController {
  static late EmailVerificationController instance;
  late EmailVerificationView view;

  bool isEmailVerified = false;
  Timer? timer;

  @override
  void initState() {
    instance = this;
    log("Email Verification Page");
    log("Current User: ${currentUser?.email}");
    isEmailVerified = currentUser!.emailVerified;
    if (!isEmailVerified) {
      resendEmailVerification();

      timer = Timer.periodic(
        const Duration(seconds: 3),
        (_) => checkEmailVerified(),
      );
    }
    log("Is Email Verified = $isEmailVerified");
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  final currentUser = FirebaseAuth.instance.currentUser;

  Future checkEmailVerified() async {
    await currentUser!.reload();
    setState(() {
      isEmailVerified = currentUser!.emailVerified;
    });

    if (isEmailVerified) {
      log("Email Verified = $isEmailVerified");
      showSnackbarMessage("Email is Verified");
      timer?.cancel();
    }
  }

  Future resendEmailVerification() async {
    try {
      log("Sending Email Verification");

      await currentUser!.sendEmailVerification();
    } on Exception catch (e) {
      showSnackbarMessage(e.toString());
    }
  }

  toLoginView() {
    Get.offAll(const LoginView());
  }

  void showSnackbarMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text(
          message,
          style: GoogleFonts.openSans(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
