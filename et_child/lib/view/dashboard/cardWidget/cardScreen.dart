import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/dashboard/cardWidget/cardSlides/cardSlide.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
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
              "Get new card",
              style: AuthTestStyle.subHeading,
            ),
          ),
          Text(
            "Customize your own card and choose how to spend with it.",
            style: AuthTestStyle.text,
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            AppAssets.card,
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
                "Get Card",
                style: ButtonTextStyle.primary,
              ),
              onPressed: () {
                Get.to(() => CardSlides());
              },
              borderColor: null,
            ),
          ),
        ],
      ),
    );
  }
}
