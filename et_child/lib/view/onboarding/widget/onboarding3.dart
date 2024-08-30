import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class onboarding3 extends StatefulWidget {
  const onboarding3({super.key});

  @override
  State<onboarding3> createState() => _onboarding3State();
}

class _onboarding3State extends State<onboarding3> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(390, 844));
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // color: Colors.red,
            width: double.infinity,
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: SvgPicture.asset(
              AppAssets.onboarding3,
              height: 165,
              // filterQuality: FilterQuality.high,
            ),
          ),
          SizedBox(
            height: 50  .h,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 25.w,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "KidCash Rewards",
                    textAlign: TextAlign.center,
                    style: OnboardingTextStyle.heading,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Text(
                      "Teach kids financial responsibility by rewarding them with money or points for completing tasks and goals!",
                      textAlign: TextAlign.center,
                      // textAlign: TextAlign.justify,
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
