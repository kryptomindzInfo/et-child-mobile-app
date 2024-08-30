import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardSlid2 extends StatefulWidget {
  const CardSlid2({super.key});

  @override
  State<CardSlid2> createState() => _CardSlid2State();
}

class _CardSlid2State extends State<CardSlid2> {
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
              AppAssets.cardSlide2,
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
                    "Unleash your\ncreativity",
                    textAlign: TextAlign.center,
                    style: OnboardingTextStyle.heading,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Text(
                      "Design your own card the way you want. Personalisaton fees may apply.",
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
