import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';

class LoginController extends State<LoginView> implements MvcController {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    log("Login Page");

    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  //login textfield variable
  String? email;
  String? password;

  //execute login operation
  doLogin() async {
    log("Email: $email");
    log("Password: $password");
  }

  toRegisterView() {
    Get.offAll(const RegisterView());
  }
}
