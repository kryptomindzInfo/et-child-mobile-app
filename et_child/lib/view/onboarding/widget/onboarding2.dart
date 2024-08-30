import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class onboarding2 extends StatefulWidget {
  const onboarding2({super.key});

  @override
  State<onboarding2> createState() => _onboarding2State();
}

class _onboarding2State extends State<onboarding2> {
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
            margin: REdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: SvgPicture.asset(
              AppAssets.onboarding2,
              height: 165,
              // filterQuality: FilterQuality.high,

            ),
          ),
          SizedBox(
            height: 65.h,
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
                    textAlign: TextAlign.center,
                    "Save Smart",
                    style: OnboardingTextStyle.heading,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 45),

                    child: Text(
                      "Encourage kids to save by letting them set goals and track their progress with a fun and interactive e-wallet!",
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
