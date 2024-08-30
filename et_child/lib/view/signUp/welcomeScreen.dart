import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/signUp/signup_country_controller.dart';
import 'package:et_child/view/custom_widgets/appbar.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/signUp/createPasscode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
              "Hey There!",
              style: AuthTestStyle.subHeading,
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Its time to create your Passcode for your\naccount’s privacy and security.",
              style: AuthTestStyle.muted,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "It is a 4 digit number that you will be asked to\nenter while logging in. It is not a card PIN Code\nand you must not share it with anyone. ",
              style: AuthTestStyle.muted,
            ),
            // SizedBox(
            //   height: 80.h,
            // ),
            Expanded(
              child: Center(
                child: SvgPicture.asset(
                  AppAssets.shield,
                  // filterQuality: FilterQuality.high,
                  height: 175,
                ),
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
                    () => CreatePasscodeScreen(),
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
