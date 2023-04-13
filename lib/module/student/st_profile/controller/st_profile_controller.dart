import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lcd_loan/state_util.dart';
import '../view/st_profile_view.dart';

class StProfileController extends State<StProfileView>
    implements MvcController {
  static late StProfileController instance;
  late StProfileView view;

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

  doLogOut() async {
    try {
      log("Logging Out");
      await FirebaseAuth.instance.signOut();
    } on Exception catch (e) {
      log(e.toString());
    }
  }
}
