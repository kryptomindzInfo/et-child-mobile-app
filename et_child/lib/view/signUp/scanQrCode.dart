import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/signUp/signup_country_controller.dart';
import 'package:et_child/view/custom_widgets/appbar.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/signUp/qrScannerScreen.dart';
import 'package:et_child/view/signUp/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ScanQrCodeScreen extends StatelessWidget {
  final CountryController countryController = Get.put(CountryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: PrimaryAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Scan QR Code",
              style: AuthTestStyle.subHeading,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "Scan QR code to get access to your ET Bank Child account",
              style: AuthTestStyle.muted,
            ),
            SizedBox(
              height: 80.h,
            ),
            Center(
              child: Image.asset(
                AppAssets.camera,
                filterQuality: FilterQuality.high,
                height: 320,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 22.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 277.w,
              child: ButtonWidget(
                minHeight: 50.h,
                color: AppColors.primarybtnColor,
                text: Text(
                  "Continue",
                  style: ButtonTextStyle.primary,
                ),
                onPressed: () {
                  // Get.to(
                  //   () => QRScannerScreen(),
                  //   transition: Transition.cupertino,
                  // );
                  Get.to(
                    () => WelcomeScreen(),
                    transition: Transition.cupertino,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
