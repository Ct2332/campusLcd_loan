import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/module/student/st_scanner/widget/st_build_qr_view.dart';
import '../controller/st_scanner_controller.dart';

class StScannerView extends StatefulWidget {
  const StScannerView({Key? key}) : super(key: key);

  Widget build(context, StScannerController controller) {
    controller.view = this;

    return Scaffold(
      body: Column(
        children: <Widget>[
          const Expanded(
            flex: 4,
            child: StBuildQrView(),
          ),
          Expanded(
            flex: 1,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  controller.result != null
                      ? Text(
                          'Barcode Type: ${describeEnum(controller.result!.format)}   Data: ${controller.result!.code}',
                        )
                      : const Text('Scan a code'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                            onPressed: () => controller.toggleFlash(),
                            child: FutureBuilder(
                              future: controller.qrController?.getFlashStatus(),
                              builder: (context, snapshot) {
                                return Text('Flash: ${snapshot.data}');
                              },
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                            onPressed: () => controller.flipCamera(),
                            child: FutureBuilder(
                              future: controller.qrController?.getCameraInfo(),
                              builder: (context, snapshot) {
                                if (snapshot.data != null) {
                                  return Text(
                                      'Camera facing ${describeEnum(snapshot.data!)}');
                                } else {
                                  return const Text('loading');
                                }
                              },
                            )),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () => controller.pauseCamera(),
                          child: const Text('pause',
                              style: TextStyle(fontSize: 20)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () async {
                            await controller.qrController?.resumeCamera();
                          },
                          child: const Text(
                            'resume',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  State<StScannerView> createState() => StScannerController();
}
