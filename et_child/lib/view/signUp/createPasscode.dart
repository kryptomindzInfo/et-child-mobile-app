import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/signUp/confirmPasscode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CreatePasscodeScreen extends StatefulWidget {
  const CreatePasscodeScreen({super.key});

  @override
  State<CreatePasscodeScreen> createState() => _CreatePasscodeScreenState();
}

class _CreatePasscodeScreenState extends State<CreatePasscodeScreen> {
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
                    "Create your passcode",
                    style: AuthTestStyle.subHeading,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  child: Text(
                    "The passcode should be of 4 digits only.",
                    style: AuthTestStyle.muted,
                  ),
                ),
                // SizedBox(
                //   height: 45.h,
                // ),
                Expanded(
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(),
                          child: PinCodeTextField(
                            appContext: context,
                            length: 4,
                            obscureText: true,
                            autoFocus: true,
                            autoDisposeControllers: false,
                            animationType: AnimationType.fade,
                            mainAxisAlignment: MainAxisAlignment.center,
                            cursorColor: AppColors.blueText,
                            textStyle: TextStyle(color: AppColors.blueText),
                            hintCharacter: '●',
                            hintStyle: TextStyle(
                              color: AppColors.hintText,
                            ),
                            pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(12),
                                fieldOuterPadding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                fieldHeight: 48.h,
                                fieldWidth: 34.w,
                                borderWidth: 4,
                                activeFillColor: AppColors.transparent,
                                selectedFillColor: AppColors.transparent,
                                inactiveFillColor: AppColors.transparent,
                                activeBorderWidth: 0,
                                errorBorderWidth: 0,
                                disabledBorderWidth: 0,
                                inactiveBorderWidth: 2,
                                selectedBorderWidth: 0,
                                errorBorderColor: AppColors.transparent,
                                disabledColor: AppColors.transparent,
                                activeColor: AppColors.transparent,
                                selectedColor: AppColors.transparent,
                                inactiveColor: AppColors.transparent
                                // context.theme.colorTheme.transparentToColor,
                                ),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            animationDuration:
                                const Duration(milliseconds: 300),
                            enableActiveFill: true,
                            enablePinAutofill: true,
                            onCompleted: (value) {
                              Get.to(
                                () => ConfirmPasswordScreen(),
                                transition: Transition.cupertino,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
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
                        () => ConfirmPasswordScreen(),
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
