import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/dashboard/dashboard_controller.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/dashboard/AccountWidget/moneyRequest/MoneyRequestScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DisplayInfoWidget extends StatefulWidget {
  const DisplayInfoWidget({super.key});

  @override
  State<DisplayInfoWidget> createState() => _DisplayInfoWidgetState();
}

class _DisplayInfoWidgetState extends State<DisplayInfoWidget> {
  bool isRequest = false;
  final DashboardController dashController = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.whiteBox,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Total Amount

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "£27.9\n",
                        style: DashTextStyle.bigHeading,
                        children: [
                          TextSpan(
                            text: "Total Amount",
                            style: DashTextStyle.bodyText,
                          ),
                        ]),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: SvgPicture.asset(
                  AppAssets.child_total_amount,
                  width: 144.w,
                  height: 115.h,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),

          // Daily Limit

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Daily Limit",
                style: DashTextStyle.bodyText,
              ),
              Text(
                '£150',
                style: DashTextStyle.bodyText,
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 13.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(77, 69, 69, 70),
                      AppColors.inActiveTabButtons,
                      AppColors.inActiveTabButtons,
                      AppColors.inActiveTabButtons,
                    ],
                  ),
                ),
              ),
              Container(
                width: 200.h,
                height: 13.h,
                decoration: BoxDecoration(
                  color: AppColors.progressBar,
                  // color: AppColors.inActiveTabButtons,

                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 16.h,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 120,
                margin: EdgeInsets.only(
                  top: 10,
                ),
                child: DeclinedButton(
                  minWidth: 100,
                  minHeight: 30,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 0,
                      spreadRadius: 0,
                      offset: Offset(0, 1),
                      color: Color.fromARGB(90, 46, 49, 144),
                    )
                  ],
                  color: AppColors.declinedbtnColor,
                  borderColor: AppColors.transparent,
                  text: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.arrow_back_rounded,
                        color: AppColors.blueText,
                      ),
                      Text(
                        "Request",
                        style: ButtonTextStyle.decline,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Get.to(() => MoneyRequestScreen());
                    // setState(() {
                    //   isRequest = true;
                    // });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          // Transfer, Saving And Reward
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 84,
                height: 84,
                decoration: BoxDecoration(
                  color: AppColors.childButtons,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.child_transfer,
                      height: 33.h,
                      color: AppColors.redText,
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      "Transfer",
                      style: DashTextStyle.childBtnTextStyle,
                    ),
                  ],
                ),
              ),
              Container(
                width: 84,
                height: 84,
                decoration: BoxDecoration(
                    color: AppColors.childButtons,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.child_savings,
                      height: 33.h,
                      color: AppColors.redText,
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      "Saving",
                      style: DashTextStyle.childBtnTextStyle,
                    ),
                  ],
                ),
              ),
              Container(
                // width: 100.w,
                width: 84,
                height: 84,
                decoration: BoxDecoration(
                    color: AppColors.childButtons,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.child_rewards,
                      height: 33.h,
                      color: AppColors.redText,
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      "Rewards",
                      style: DashTextStyle.childBtnTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
