import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/module/auth/register/widget/at_already_have_account.dart';
import 'package:lcd_loan/module/auth/register/widget/at_registration_button.dart';
import 'package:lcd_loan/module/auth/register/widget/at_text_field.dart';
import 'package:lcd_loan/module/auth/register/widget/at_title.dart';

class AtContent extends StatelessWidget {
  const AtContent({Key? key}) : super(key: key);

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
          onRegister: () {},
        ),
        const SizedBox(height: 20),
        AtAlreadyHaveAccount(
          onTap: () => controller.toLoginView(),
        ),
      ],
    );
  }
}
