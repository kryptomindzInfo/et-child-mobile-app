import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/login/loginScanQrCode.dart';
import 'package:et_child/view/signUp/faceIdEnableScreen.dart';
import 'package:et_child/view/signUp/widget/verified_bottom_sheet_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginStartCameraScreen extends StatefulWidget {
  const LoginStartCameraScreen({super.key});

  @override
  State<LoginStartCameraScreen> createState() => _LoginStartCameraScreenState();
}

class _LoginStartCameraScreenState extends State<LoginStartCameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.authBgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          AppAssets.light_logo,
          filterQuality: FilterQuality.high,
          height: 35,
        ),
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
          size: 30,
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_rounded,
          ),
        ),
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
      ),
      body: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              40,
            ),
            topRight: Radius.circular(
              40,
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: AppColors.bgColor,
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                filterQuality: FilterQuality.high,
                alignment: Alignment.bottomCenter,
                image: AssetImage(
                  AppAssets.nextLevel,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Log in",
                    style: AuthTestStyle.subHeading,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  child: Text(
                    "Scan QR code to Get access to your ET Bank Child account",
                    style: AuthTestStyle.muted,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 22.h),
            height: 200,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                                  // Get.to(
                                  //   () => FindCodeScreen(),
                                  //   transition: Transition.cupertino,
                                  // );
                                  // callMyFunction();
                                },
                            ),
                          ]),
                    ),
                  ),
                ),
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
                        () => LoginScanQrCodeScreen(),
                        transition: Transition.cupertino,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 277.w,
                  child: DeclinedButton(
                    minHeight: 50.h,
                    color: AppColors.declinedbtnColor,
                    text: Text(
                      "Login with mobile number",
                      style: ButtonTextStyle.decline,
                    ),
                    onPressed: () {
                      // Get.to(
                      //   () => NotificationEnableScreen(),
                      //   transition: Transition.cupertino,
                      // );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
