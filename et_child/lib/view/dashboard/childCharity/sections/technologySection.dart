import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/view/dashboard/childBrand/action/brandsOffer.dart';
import 'package:et_child/view/dashboard/childBrand/widget/recentlyViwedProduct.dart';
import 'package:et_child/view/dashboard/childCharity/widget/hotSalesProduct_widget.dart';
import 'package:et_child/view/dashboard/childCharity/widget/recentlyViwedProduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CharityTechnology extends StatefulWidget {
  const CharityTechnology({super.key});

  @override
  State<CharityTechnology> createState() => _CharityTechnologyState();
}

class _CharityTechnologyState extends State<CharityTechnology> {
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
            height: 170,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(BrandsOfferScreen());
                  },
                  child: HotSatesProductWidget(
                    title: "Nike Shoes",
                    // image: appleImages[index],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(ChildProductDetails(
                    //   image: appleImages[index],
                    //   title: apple[index],
                    // ));
                  },
                  child: HotSatesProductWidget(
                    title: "Sony WH/1000XM4",
                    image: AppAssets.headphones,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(ChildProductDetails(
                    //   image: appleImages[index],
                    //   title: apple[index],
                    // ));
                  },
                  child: HotSatesProductWidget(
                    title: "FreeBuds Huawei",
                    image: AppAssets.buds,
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
                  child: RecentlyViewedProductCharity(
                    color: Color(0xffA1C7D7).withAlpha(90),
                    title: "Huawei Matebook X 13",
                    amunt: "£ 20,999",
                    image: AppAssets.laptop,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(ChildProductDetails(
                    //   image: appleImages[index],
                    //   title: apple[index],
                    // ));
                  },
                  child: RecentlyViewedProductCharity(
                    color: Color(0xff4D0A8E).withAlpha(80),
                    title: "Alexa Home",
                    amunt: "£ 999",
                    image: AppAssets.alexa,
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
