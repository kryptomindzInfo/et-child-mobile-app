import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecenttransactionWidget extends StatefulWidget {
  const RecenttransactionWidget({super.key});

  @override
  State<RecenttransactionWidget> createState() =>
      _RecenttransactionWidgetState();
}

class _RecenttransactionWidgetState extends State<RecenttransactionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteBox,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          // First Row

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    AppAssets.netflix,
                    height: 30.h,
                    width: 30.w,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Netflix",
                        style: DashTextStyle.listTitle
                      ),
                      Text(
                        'Today 12:30pm',
                        style: DashTextStyle.listDiscription
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '-£3.9',
                    style: DashTextStyle.listTrail
                  ),
                  Text(
                    "Subscription",
                    style: DashTextStyle.listDiscription
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 19.h,
          ),

          // Second Row

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    AppAssets.tution,
                    height: 30.h,
                    width: 30.w,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tuition Fee",
                        style: DashTextStyle.listTitle
                      ),
                      Text(
                        'Today 14:30pm',
                        style: DashTextStyle.listDiscription
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '-£5.9',
                    style: DashTextStyle.listTrail
                  ),
                  Text(
                    '',
                    style: DashTextStyle.listDiscription
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 19.h,
          ),

          // Third Row

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    AppAssets.netflix,
                    height: 30.h,
                    width: 30.w,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Netflix",
                        style: DashTextStyle.listTitle
                      ),
                      Text(
                        'Today 12:30pm',
                        style: DashTextStyle.listDiscription
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '-£3.9',
                    style: DashTextStyle.listTrail
                  ),
                  Text(
                    "Subscription",
                    style: DashTextStyle.listDiscription
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
