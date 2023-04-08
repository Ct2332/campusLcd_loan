import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lcd_loan/state_util.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../view/st_scanner_view.dart';

class StScannerController extends State<StScannerView>
    implements MvcController {
  static late StScannerController instance;
  late StScannerView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    qrController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? qrController;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      qrController!.pauseCamera();
    } else if (Platform.isIOS) {
      qrController!.resumeCamera();
    }
  }

  void onQRViewCreated(QRViewController qrController) {
    this.qrController = qrController;
    qrController.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  toggleFlash() async {
    await qrController?.toggleFlash();
    setState(() {});
  }

  flipCamera() async {
    await qrController?.flipCamera();
    setState(() {});
  }

  pauseCamera() async {
    await qrController?.pauseCamera();
    // setState(() {});
  }
}
