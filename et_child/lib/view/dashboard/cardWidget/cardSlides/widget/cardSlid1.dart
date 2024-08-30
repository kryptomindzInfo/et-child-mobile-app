import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardSlide1 extends StatefulWidget {
  const CardSlide1({super.key});

  @override
  State<CardSlide1> createState() => _CardSlide1State();
}

class _CardSlide1State extends State<CardSlide1> {
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
            child: Image.asset(
              AppAssets.cardSlide1,
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
                    "Get your Card",
                    textAlign: TextAlign.center,
                    style: OnboardingTextStyle.heading,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Text(
                      "You can only order card from your parent’s ET bank app. Ask them to order.",
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
