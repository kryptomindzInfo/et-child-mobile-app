import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/signUp/signup_country_controller.dart';
import 'package:et_child/view/custom_widgets/appbar.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/signUp/findCode.dart';
import 'package:et_child/view/signUp/scanQrCode.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class StartCameraScreen extends StatefulWidget {
  const StartCameraScreen({super.key});

  @override
  State<StartCameraScreen> createState() => _StartCameraScreenState();
}

class _StartCameraScreenState extends State<StartCameraScreen> {
  final CountryController countryController = Get.put(CountryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: PrimaryAppBar(),
      body: Container(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            // vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Almost there!",
                  style: AuthTestStyle.subHeading,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                child: Text(
                  "Scan the ET Bank QR code on your parents' app to log in. If they haven't created an account for you yet, you'll need to ask then to create one.",
                  style: AuthTestStyle.muted,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 22.h),
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 277.w,
              child: ButtonWidget(
                minHeight: 50.h,
                color: AppColors.primarybtnColor,
                text: Text(
                  "Start Camera",
                  style: ButtonTextStyle.primary,
                ),
                onPressed: () {
                  Get.to(
                    () => ScanQrCodeScreen(),
                    transition: Transition.cupertino,
                  );
                },
              ),
            ),
            Container(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.h),
                child: RichText(
                  text: TextSpan(
                      text: "To know where to find code. ",
                      style: AuthTestStyle.link,
                      children: [
                        TextSpan(
                          text: "Click here",
                          style: AuthTestStyle.redLink,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Get.to(() => SignInScreen());
                              Get.to(
                                () => FindCodeScreen(),
                                transition: Transition.cupertino,
                              );
                              // callMyFunction();
                            },
                        ),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
