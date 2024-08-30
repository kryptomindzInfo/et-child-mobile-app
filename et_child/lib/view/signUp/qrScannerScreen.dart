import 'package:et_child/controllers/signUp/qrScanner_controller.dart';
import 'package:et_child/view/custom_widgets/appbar.dart';
import 'package:et_child/view/signUp/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScannerScreen extends StatefulWidget {
  @override
  _QRScannerScreenState createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> with WidgetsBindingObserver {
  final QRScannerController qrScannerController = Get.put(QRScannerController());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    qrScannerController.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive || state == AppLifecycleState.paused) {
      qrScannerController.pauseCamera();
    } else if (state == AppLifecycleState.resumed) {
      qrScannerController.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PrimaryAppBar(),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: QRView(
                  key: GlobalKey(debugLabel: 'QR'),
                  onQRViewCreated: qrScannerController.onQRViewCreated,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Obx(() => Text(
                qrScannerController.qrResult.value.isNotEmpty
                    ? 'Scanned: ${qrScannerController.qrResult.value}'
                    : 'Scan a code',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              )),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Manually trigger navigation for demo
                Get.to(
                  () => WelcomeScreen(),
                  transition: Transition.cupertino,
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Continue'),
            ),
          ),
        ],
      ),
    );
  }
}
