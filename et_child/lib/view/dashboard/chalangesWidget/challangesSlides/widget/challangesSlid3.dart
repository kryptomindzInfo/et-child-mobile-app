import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChallangeSlide3 extends StatefulWidget {
  const ChallangeSlide3({super.key});

  @override
  State<ChallangeSlide3> createState() => _ChallangeSlide3State();
}

class _ChallangeSlide3State extends State<ChallangeSlide3> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(390, 844));
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // color: Colors.red,
            margin: EdgeInsets.only(top: 20),
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: SvgPicture.asset(
              AppAssets.challangeSlide3,
              height: 200,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 25.w,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Effort brings\nrewards.",
                    textAlign: TextAlign.center,
                    style: OnboardingTextStyle.heading,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Text(
                      "Earn money automatically for finishing tasks, chores, homework, and more.",
                      textAlign: TextAlign.center,
                      style: OnboardingTextStyle.text,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
