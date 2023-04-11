import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/module/auth/register/widget/at_account_confirmation.dart';
import 'package:lcd_loan/module/auth/register/widget/at_registration_button.dart';
import 'package:lcd_loan/module/auth/register/widget/at_text_field.dart';
import 'package:lcd_loan/module/auth/register/widget/at_title.dart';

class AtRegisterContent extends StatelessWidget {
  const AtRegisterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegisterController controller = RegisterController.instance;
    return Column(
      children: [
        const AtTitle(),
        const SizedBox(height: 35),
        const AtTextField(
          iconUrl: 'user.svg',
          hint: 'Nama Lengkap',
        ),
        const AtTextField(
          iconUrl: 'password-check.svg',
          hint: 'NIM',
        ),
        const AtTextField(
          iconUrl: 'sms.svg',
          hint: 'Email',
        ),
        const AtTextField(
          iconUrl: 'key.svg',
          hint: 'Password',
        ),
        const SizedBox(height: 20),
        AtRegistrationButton(
          onTap: () => controller.doRegister(),
        ),
        const SizedBox(height: 20),
        AtAccountConfirmation(
          onTap: () => controller.toLoginView(),
        ),
      ],
    );
  }
}
