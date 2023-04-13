import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/module/student/st_profile/widget/st_logout_button.dart';
import 'package:lcd_loan/module/student/st_profile/widget/st_profile_detail.dart';
import 'package:lcd_loan/module/student/st_profile/widget/st_profile_image.dart';
import '../controller/st_profile_controller.dart';

class StProfileView extends StatefulWidget {
  const StProfileView({Key? key}) : super(key: key);

  Widget build(context, StProfileController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.blueGrey.withOpacity(0.05),
      body: SafeArea(
        minimum: const EdgeInsets.only(
          left: 25,
          right: 25,
          top: 45,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                StLogoutButton(
                  onTap: () => controller.doLogOut(),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: const [
                  SizedBox(height: 35),
                  StProfileImage(
                    // imgUrl: "https://bit.ly/43wLLI7",
                    name: "Rely Arfadillah",
                    email: "shinmendenz@gmail.com",
                  ),
                  SizedBox(height: 25),
                  StProfileDetail(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<StProfileView> createState() => StProfileController();
}
