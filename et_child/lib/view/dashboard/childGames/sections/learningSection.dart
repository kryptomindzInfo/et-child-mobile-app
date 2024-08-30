import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/view/dashboard/childGames/widget/hotSalesProductGames.dart';
import 'package:et_child/view/dashboard/childGames/widget/recentlyViewedProductGames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LearningSection extends StatefulWidget {
  const LearningSection({super.key});

  @override
  State<LearningSection> createState() => _LearningSectionState();
}

class _LearningSectionState extends State<LearningSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Container(
            width: double.infinity,
            child: Text(
              "Hot sales",
              style: OtherScreens.subHeading,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 180,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    // Get.to(ChildProductDetails(
                    //   image: appleImages[index],
                    //   title: apple[index],
                    // ));
                  },
                  child: HotesalesproductGames(
                    title: "Cute Plush Toy",
                    image: AppAssets.tady,
                    amunt: "£ 10",
                    
                    // restaurant: "Spicy restaurant",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(ChildProductDetails(
                    //   image: appleImages[index],
                    //   title: apple[index],
                    // ));
                  },
                  child: HotesalesproductGames(
                    title: "7 cheese Pizza",
                    image: AppAssets.toy2,
                    amunt: "£ 49",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(ChildProductDetails(
                    //   image: appleImages[index],
                    //   title: apple[index],
                    // ));
                  },
                  child: HotesalesproductGames(
                    title: "Veg Sandwich",
                    image: AppAssets.toy3,
                    amunt: "£ 14,999",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            width: double.infinity,
            child: Text(
              "Recently viewed",
              style: OtherScreens.subHeading,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 180,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    // Get.to(ChildProductDetails(
                    //   image: appleImages[index],
                    //   title: apple[index],
                    // ));
                  },
                  child: RecentlyViewedProductGames(
                    color: Color(0xffFA9600).withAlpha(50),
                    title: "Solimo Castle Slide ",
                    amunt: "£ 350",
                    image: AppAssets.slide,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(ChildProductDetails(
                    //   image: appleImages[index],
                    //   title: apple[index],
                    // ));
                  },
                  child: RecentlyViewedProductGames(
                    color: Color(0xffFF9F0E).withAlpha(50),
                    title: " E-Ride 3 in 1 Electric Tricycle",
                    amunt: "£ 200",
                    image: AppAssets.scooter,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
        ],
      ),
    );
  }
}
