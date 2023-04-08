import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class StBuildQrView extends StatelessWidget {
  const StBuildQrView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StScannerController controller = StScannerController.instance;

    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: controller.qrKey,
      onQRViewCreated: controller.onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) =>
          controller.onPermissionSet(context, ctrl, p),
    );
  }
}
