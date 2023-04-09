import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/module/admin/adm_lcd_data_form/widget/adm_save_button.dart';
import 'package:lcd_loan/shared/util/validator/validator.dart';
import 'package:lcd_loan/shared/widget/appBar_title/app_bar_title.dart';
import 'package:lcd_loan/shared/widget/input_field/q_text_field.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../controller/adm_lcd_data_form_controller.dart';

class AdmLcdDataFormView extends StatefulWidget {
  const AdmLcdDataFormView({Key? key}) : super(key: key);

  Widget build(context, AdmLcdDataFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Add Lcd Data'),
      ),
      body: Column(
        children: [
          Center(
            child: QrImage(
              data: 'data',
              version: QrVersions.auto,
              size: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              children: [
                QTextField(
                  label: "Nama Proyektor LCD",
                  validator: Validator.required,
                  suffixIcon: Icons.abc_rounded,
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                QTextField(
                  label: "ID Proyektor LCD",
                  validator: Validator.required,
                  suffixIcon: Icons.abc_rounded,
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: AdmSaveButton(
        onTap: () {},
      ),
    );
  }

  @override
  State<AdmLcdDataFormView> createState() => AdmLcdDataFormController();
}
