import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/signUp/signup_country_controller.dart';
import 'package:et_child/view/custom_widgets/appbar.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/signUp/startCamera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NextLevelScreen extends StatefulWidget {
  const NextLevelScreen({super.key});

  @override
  State<NextLevelScreen> createState() => _NextLevelScreenState();
}

class _NextLevelScreenState extends State<NextLevelScreen> {
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
            // vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "You’re upgraded to the\nnext level!",
                  style: AuthTestStyle.subHeading,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                child: Text(
                  "To experience fully enabled Features, download the ET bank's main app.",
                  style: AuthTestStyle.muted,
                ),
              ),
              SizedBox(
                height: 45.h,
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset(
                        AppAssets.nextLevel,
                        filterQuality: FilterQuality.high,
                        height: 320,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
                    () => StartCameraScreen(),
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
