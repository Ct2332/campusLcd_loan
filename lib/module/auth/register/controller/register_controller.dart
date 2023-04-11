import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';

class RegisterController extends State<RegisterView> implements MvcController {
  static late RegisterController instance;
  late RegisterView view;

  @override
  void initState() {
    instance = this;
    log("Register Page");
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  //textfield input variable
  String? fullName;
  String? nim;
  String? email;
  String? password;

  //function for register user
  doRegister() {
    log('FullName: $fullName');
    log('NIM: $nim');
    log('Email: $email');
    log('Password: $password');
  }

  toLoginView() {
    Get.offAll(const LoginView());
  }
}
