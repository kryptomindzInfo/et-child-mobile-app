import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/view/dashboard/AccountWidget/widget/displayInfo_widget.dart';
import 'package:et_child/view/dashboard/AccountWidget/widget/recentTransaction_widget.dart';
import 'package:et_child/view/dashboard/childBrand/childBrand_screen.dart';
import 'package:et_child/view/dashboard/childCharity/childCharity_screen.dart';
import 'package:et_child/view/dashboard/childFood/childFood_screen.dart';
import 'package:et_child/view/dashboard/childGames/childGames_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      padding: EdgeInsets.symmetric(vertical: 10.h),
      // width: double.infinity,
      child: Column(
        children: [
          Container(
            // width: double.infinity,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.greyBox,
            ),
            child: Column(
              children: [
                DisplayInfoWidget(),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  // margin:  EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Transaction",
                        style: DashTextStyle.heading,
                      ),
                      Text(
                        "View details",
                        style: DashTextStyle.subBodyText,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                RecenttransactionWidget(),
              ],
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => ChildBrands());
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.greyBox,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppAssets.brands_icon,
                          // filterQuality: FilterQuality.high,
                          height: 28,
                        ),
                        Text(
                          "Brands",
                          style: DashTextStyle.brandsText,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      () => ChildFood(),
                    );
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.greyBox,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppAssets.food_icon,
                          // filterQuality: FilterQuality.high,
                          height: 28,
                        ),
                        Text(
                          "Food",
                          style: DashTextStyle.brandsText,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => ChildGame());
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.greyBox,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppAssets.games_icon,
                          // filterQuality: FilterQuality.high,
                          height: 28,
                        ),
                        Text(
                          "Games",
                          style: DashTextStyle.brandsText,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      () => ChildCharity(),
                      transition: Transition.cupertino,
                    );
                  },
                  child: Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.greyBox,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppAssets.charity_icon,
                          // filterQuality: FilterQuality.high,
                          height: 28,
                        ),
                        Text(
                          "Charity",
                          style: DashTextStyle.brandsText,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
        ],
      ),
    );
  }
}
