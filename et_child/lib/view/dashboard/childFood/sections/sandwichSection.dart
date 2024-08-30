import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/view/dashboard/childBrand/widget/product_widget.dart';
import 'package:et_child/view/dashboard/childBrand/widget/recentlyViwedProduct.dart';
import 'package:et_child/view/dashboard/childFood/widget/hotSalesProductFood.dart';
import 'package:et_child/view/dashboard/childFood/widget/recentlyViewedProductFood.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SandwichSection extends StatefulWidget {
  const SandwichSection({super.key});

  @override
  State<SandwichSection> createState() => _SandwichSectionState();
}

class _SandwichSectionState extends State<SandwichSection> {
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
                  child: HotesalesproductFood(
                    title: "Burger Ferguson",
                    image: AppAssets.burger,
                    restaurant: "Spicy restaurant",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(ChildProductDetails(
                    //   image: appleImages[index],
                    //   title: apple[index],
                    // ));
                  },
                  child: HotesalesproductFood(
                    title: "7 cheese Pizza",
                    restaurant: "Pansi Restaurant",
                    image: AppAssets.pizza,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(ChildProductDetails(
                    //   image: appleImages[index],
                    //   title: apple[index],
                    // ));
                  },
                  child: HotesalesproductFood(
                    title: "Veg Sandwich",
                    restaurant: "Real Peprica",
                    image: AppAssets.sandwich,
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
                  child: RecentlyViewedProductFood(
                    color: Color(0xffFDBC64).withAlpha(80),
                    title: "Hot dog",
                    amunt: "£ 25",
                    image: AppAssets.hotdog,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(ChildProductDetails(
                    //   image: appleImages[index],
                    //   title: apple[index],
                    // ));
                  },
                  child: RecentlyViewedProductFood(
                    color: Color(0xffFADE81).withAlpha(90),
                    title: "Veg Sizzler",
                    amunt: "£ 40",
                    image: AppAssets.sizzler,
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
