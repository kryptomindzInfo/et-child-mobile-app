import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/signUp/signup_country_controller.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/login/login_mobileno.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScanQrCodeScreen extends StatefulWidget {
  @override
  State<LoginScanQrCodeScreen> createState() => _LoginScanQrCodeScreenState();
}

class _LoginScanQrCodeScreenState extends State<LoginScanQrCodeScreen> {
  final CountryController countryController = Get.put(CountryController());

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Scan QR Code",
                    style: AuthTestStyle.subHeading,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  child: Text(
                    "Place the code displayed on your parent’s phone in the camera frame.",
                    style: AuthTestStyle.muted,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(AppAssets.camera),
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
                      Get.to(
                        () => LoginMobileNo(),
                        transition: Transition.cupertino,
                      );
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
