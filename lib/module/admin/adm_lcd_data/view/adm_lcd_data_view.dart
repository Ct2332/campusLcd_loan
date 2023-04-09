import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/module/admin/adm_lcd_data/widget/adm_lcd_card.dart';
import 'package:lcd_loan/shared/widget/appBar_title/app_bar_title.dart';
import '../controller/adm_lcd_data_controller.dart';

class AdmLcdDataView extends StatefulWidget {
  const AdmLcdDataView({Key? key}) : super(key: key);

  Widget build(context, AdmLcdDataController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent[100],
        title: const AppBarTitle(
          title: "LCD Data",
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, snapshot) {
          return AdmLcdCard();
        },
      ),
    );
  }

  @override
  State<AdmLcdDataView> createState() => AdmLcdDataController();
}
