import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/signUp/signup_country_controller.dart';
import 'package:et_child/view/custom_widgets/appbar.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/custom_widgets/listItems.dart';
import 'package:et_child/view/signUp/scanQrCode.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FindCodeScreen extends StatefulWidget {
  const FindCodeScreen({super.key});

  @override
  State<FindCodeScreen> createState() => _FindCodeScreenState();
}

class _FindCodeScreenState extends State<FindCodeScreen> {
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
                  "Find Code.",
                  style: AuthTestStyle.subHeading,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 27,
                ),
                child: Column(
                  children: [
                    ListItemWidget(
                      text:
                          "Ask your parents to open your profile from accounts in their ET bank App.",
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ListItemWidget(
                      text:
                          "From there, tap settings and open the <18 QR code.",
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ListItemWidget(
                      text:
                          "Scan the QR code with your mobile camera to login in.",
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
                    () => ScanQrCodeScreen(),
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
