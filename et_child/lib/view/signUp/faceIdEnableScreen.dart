import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/signUp/signup_country_controller.dart';
import 'package:et_child/view/custom_widgets/appbar.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/signUp/notificationEnableScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FaceIdEnableScreen extends StatefulWidget {
  @override
  State<FaceIdEnableScreen> createState() => _FaceIdEnableScreenState();
}

class _FaceIdEnableScreenState extends State<FaceIdEnableScreen> {
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
              "Enable Face Lock",
              style: AuthTestStyle.subHeading,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "Face lock is more secure and faster than passcode. Use your Face ID log in. ",
              style: AuthTestStyle.muted,
            ),

            // SizedBox(
            //   height: 80.h,
            // ),
            Expanded(
              child: Center(
                child: SvgPicture.asset(
                  AppAssets.lock,
                  // filterQuality: FilterQuality.high,
                  height: 200,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 22.h),
        height: 180,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 277.w,
              child: ButtonWidget(
                minHeight: 50.h,
                color: AppColors.primarybtnColor,
                text: Text(
                  "Enable Face ID",
                  style: ButtonTextStyle.primary,
                ),
                onPressed: () {
                  // Get.to(
                  //   () => CreatePasscodeScreen(),
                  //   transition: Transition.cupertino,
                  // );
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
                  "Not Now",
                  style: ButtonTextStyle.decline,
                ),
                onPressed: () {
                  Get.to(
                    () => NotificationEnableScreen(),
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
