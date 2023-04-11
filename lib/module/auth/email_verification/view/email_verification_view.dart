import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/module/auth/email_verification/widget/at_email_verify.dart';

class EmailVerificationView extends StatefulWidget {
  const EmailVerificationView({Key? key}) : super(key: key);

  Widget build(context, EmailVerificationController controller) {
    controller.view = this;

    if (controller.isEmailVerified) {
      return const StMainNavigationView();
    } else {
      return const AtEmailVerify();
    }
  }

  @override
  State<EmailVerificationView> createState() => EmailVerificationController();
}
