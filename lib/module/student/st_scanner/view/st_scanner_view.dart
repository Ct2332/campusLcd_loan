import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/module/student/st_scanner/widget/st_build_qr_view.dart';
import 'package:lcd_loan/module/student/st_scanner/widget/st_light_on.dart';
import 'package:lcd_loan/module/student/st_scanner/widget/st_scan_button.dart';
import '../controller/st_scanner_controller.dart';

class StScannerView extends StatefulWidget {
  const StScannerView({Key? key}) : super(key: key);

  Widget build(context, StScannerController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Scan Qr Code",
          style: GoogleFonts.openSans(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          StLightOn(
            onTap: () => controller.toggleFlash(),
            isLightOn: controller.isLightOn,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const Expanded(
            flex: 4,
            child: StBuildQrView(),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                controller.result != null
                    ? Text(
                        'Barcode Type: ${describeEnum(controller.result!.format)}   Data: ${controller.result!.code}',
                      )
                    : const Text('Scan a code'),
                StScanButton(
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  State<StScannerView> createState() => StScannerController();
}
