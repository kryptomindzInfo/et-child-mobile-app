import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/login/loginStartCamera.dart';
import 'package:et_child/view/signUp/dob.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.authBgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          AppAssets.light_logo,
          filterQuality: FilterQuality.high,
          height: 50,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(40),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
            vertical: 24.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Welcome!",
                        style: AuthTestStyle.heading,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Welcome to ET bank Child Account!",
                        style: AuthTestStyle.text,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: SvgPicture.asset(
                        AppAssets.welcome_banner,
                        // filterQuality: FilterQuality.high,
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      child: Text(
                        "Age restrictions applied.",
                        style: AuthTestStyle.text,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 270.w,
                      child: ButtonWidget(
                        color: AppColors.secondarybtnColor,
                        text: Text(
                          "Login",
                          style: ButtonTextStyle.primary,
                        ),
                        onPressed: () {
                          Get.to(
                            () => LoginStartCameraScreen(),
                            transition: Transition.cupertino,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => DOBScreen(),
                          transition: Transition.cupertino,
                        );
                        print("New Account");
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 1),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(width: 1, color: AppColors.blueText),
                          ),
                        ),
                        child: Text(
                          "Create a new account",
                          style: AuthTestStyle.link,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
