import 'dart:async';
import 'package:et_child/view/signUp/welcomeScreen.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScannerController extends GetxController {
  var qrResult = ''.obs;
  QRViewController? controller;

  void onQRViewCreated(QRViewController qrController) {
    controller = qrController;

    // For future use when you have actual QR codes
    // controller!.scannedDataStream.listen((scanData) {
    //   qrResult.value = scanData.code ?? '';
    //   Timer(Duration(seconds: 5), () {
    //     Get.to(
    //       () => WelcomeScreen(),
    //       transition: Transition.cupertino,
    //     );
    //     print("Scanned");
    //   });
    // });

    // Demo: Simulate a QR scan after 5 seconds
    Timer(Duration(seconds: 5), () {
      if (Get.isRegistered<QRScannerController>()) {
        Get.to(
          () => WelcomeScreen(),
          transition: Transition.cupertino,
        );
        print("Demo Scanned");
      }
    });
  }

  void pauseCamera() {
    controller?.pauseCamera();
  }

  void resumeCamera() {
    controller?.resumeCamera();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
