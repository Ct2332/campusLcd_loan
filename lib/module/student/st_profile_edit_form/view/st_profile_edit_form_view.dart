// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/module/student/st_profile_edit_form/widget/st_save_button.dart';
import 'package:lcd_loan/shared/widget/image_picker/image_picker.dart';

class StProfileEditFormView extends StatefulWidget {
  final String docId;
  final String? imgUrl;
  final String? name;
  final String? nim;
  const StProfileEditFormView({
    Key? key,
    required this.docId,
    this.imgUrl,
    this.name,
    this.nim,
  }) : super(key: key);

  Widget build(context, StProfileEditFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Edit Profile'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: ListView(
          children: [
            QImagePicker(
              label: "Foto Profil",
              validator: Validator.required,
              value: controller.imgUrl,
              onChanged: (value) {
                controller.imgUrl = value;
              },
            ),
            const SizedBox(height: 20),
            QTextField(
              label: "Nama Lengkap",
              validator: Validator.required,
              value: controller.name,
              onChanged: (value) {
                controller.name = value;
              },
            ),
            const SizedBox(height: 20),
            QTextField(
              label: "NIM",
              validator: Validator.required,
              value: controller.nim,
              suffixIcon: Icons.numbers,
              onChanged: (value) {
                controller.nim = value;
              },
            ),
          ],
        ),
      ),
      floatingActionButton: StSaveButton(
        onTap: () => controller.saveStudentData(),
      ),
    );
  }

  @override
  State<StProfileEditFormView> createState() => StProfileEditFormController();
}
