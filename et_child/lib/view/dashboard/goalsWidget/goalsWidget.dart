import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/dashboard/cardWidget/cardSlides/cardSlide.dart';
import 'package:et_child/view/dashboard/goalsWidget/goalsScreen/addGoalsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({super.key});

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
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
              "Save for your goals.",
              style: AuthTestStyle.subHeading,
            ),
          ),
          Container(
            width: double.infinity,
            child: Text(
              "Create goals to save for something special.",
              style: AuthTestStyle.text,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            AppAssets.goalsBanner,
            width: 185,
            height: 120,
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
                "Create",
                style: ButtonTextStyle.primary,
              ),
              onPressed: () {
                Get.to(() => AddGoalsScreen());
              },
              borderColor: null,
            ),
          ),
        ],
      ),
    );
  }
}
