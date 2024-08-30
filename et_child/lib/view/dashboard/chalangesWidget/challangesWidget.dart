import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/dashboard/chalangesWidget/challangesSlides/challangesSlidescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ChallangesScreen extends StatefulWidget {
  const ChallangesScreen({super.key});

  @override
  State<ChallangesScreen> createState() => _ChallangesScreenState();
}

class _ChallangesScreenState extends State<ChallangesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.childAppBarColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              "Boost Your earnings",
              style: AuthTestStyle.subHeading,
            ),
          ),
          Container(
            width: double.infinity,
            child: Text(
              "Complete challenges to earn extra money",
              style: AuthTestStyle.text,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            AppAssets.challangesBanner,
            // width: 185,
            height: 125,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            child: ButtonWidget(
              minHeight: 48,
              color: AppColors.primarybtnColor,
              text: Text(
                "Let’s start",
                style: ButtonTextStyle.primary,
              ),
              onPressed: () {
                Get.to(() => ChallangesSlideScreen());
              },
              borderColor: null,
            ),
          ),
        ],
      ),
    );
  }
}
