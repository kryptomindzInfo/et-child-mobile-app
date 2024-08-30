import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/signUp/signup_country_controller.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/login/enterPassword.dart';
import 'package:et_child/view/signUp/nextLevel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SignUpVarification extends StatefulWidget {
  @override
  State<SignUpVarification> createState() => _SignUpVarificationState();
}

class _SignUpVarificationState extends State<SignUpVarification> {
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
                    "6-digit code",
                    style: AuthTestStyle.subHeading,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  child: Text(
                    "Enter the code that we’ve sent to the registered mobile number.",
                    style: AuthTestStyle.muted,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                PinCodeTextField(
                  onChanged: (value) {
                    // if (value.length >= 6) {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => const SignupPushNotif()));
                    // }
                  },
                  onCompleted: (value) {
                    Get.to(
                      () => NextLevelScreen(),
                      transition: Transition.cupertino,
                    );
                  },
                  autoFocus: true,
                  textStyle: TextformFieldTextStyle.mainText,
                  keyboardType: TextInputType.number,
                  appContext: context,
                  length: 6,
                  pastedTextStyle: TextformFieldTextStyle.mainText,
                  obscureText: true,
                  cursorColor: AppColors.redText,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    borderWidth: 1,
                    activeBorderWidth: 1,
                    selectedBorderWidth: 1,
                    inactiveBorderWidth: 1,
                    fieldHeight: 48.h,
                    fieldWidth: 34.w,
                    activeFillColor: AppColors.bgColor,
                    inactiveColor: AppColors.textfieldBorder,
                    // inactiveFillColor: AppColors.blackText,
                    selectedColor: AppColors.redText,
                    activeColor: AppColors.redText,
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Container(
                  child: Text(
                    "Resend Code in 0:18",
                    style: AuthTestStyle.muted,
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
                        () => NextLevelScreen(),
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
