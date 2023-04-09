// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lcd_loan/module/admin/adm_lcd_data_form/widget/adm_delete_button.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/module/admin/adm_lcd_data_form/widget/adm_save_button.dart';
import 'package:lcd_loan/shared/util/validator/validator.dart';
import 'package:lcd_loan/shared/widget/appBar_title/app_bar_title.dart';
import 'package:lcd_loan/shared/widget/input_field/q_text_field.dart';

import '../controller/adm_lcd_data_form_controller.dart';

class AdmLcdDataFormView extends StatefulWidget {
  final Map? item;
  const AdmLcdDataFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, AdmLcdDataFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: controller.isEditMode
            ? const AppBarTitle(title: 'Edit Data')
            : const AppBarTitle(title: 'Add Data'),
        actions: [
          controller.isEditMode
              ? AdmDeleteButton(onTap: () => controller.deleteData())
              : const SizedBox(),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: QrImage(
              data: controller.qrCodeData,
              version: QrVersions.auto,
              size: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Column(
              children: [
                QTextField(
                  label: "Nama Proyektor LCD",
                  validator: Validator.required,
                  suffixIcon: Icons.abc_rounded,
                  value: controller.lcdName,
                  onChanged: (value) {
                    controller.lcdName = value;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                QTextField(
                  label: "ID Proyektor LCD",
                  validator: Validator.required,
                  suffixIcon: Icons.abc_rounded,
                  value: controller.lcdId,
                  onChanged: (value) {
                    controller.lcdId = value;
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: AdmSaveButton(
        onTap: () => controller.doSaveData(),
      ),
    );
  }

  @override
  State<AdmLcdDataFormView> createState() => AdmLcdDataFormController();
}
