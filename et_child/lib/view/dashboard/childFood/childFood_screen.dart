import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/food/food_controller.dart';
import 'package:et_child/view/custom_widgets/parentThemeScaffold.dart';
import 'package:et_child/view/custom_widgets/searchtext.dart';
import 'package:et_child/view/dashboard/childFood/sections/sandwichSection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ChildFood extends StatefulWidget {
  const ChildFood({super.key});

  @override
  State<ChildFood> createState() => _ChildFoodState();
}

class _ChildFoodState extends State<ChildFood> {
  final FoodController controller = Get.put(FoodController());

  @override
  Widget build(BuildContext context) {
    return ParentThemeScaffold(
      appbar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        forceMaterialTransparency: true,
        title: Text(
          "Food",
          style: OtherScreens.pageTitle,
        ),
        leadingWidth: 80,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: SvgPicture.asset(
            AppAssets.dashBack,
            height: 15,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Get.back();
            },
            icon: IconButton(
              onPressed: () {},
              icon: Image.asset(
                AppAssets.notificationBell_icon,
              ),
            ),
          ),
        ],
        backgroundColor: AppColors.transparent,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SearchBarWidget(
              hintText: "Search",
              onChanged: (value) {
                // if (value.length > 0) {
                //   Get.to(
                //     SearchesSuggestedProducts(),
                //   );
                // }
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  width: double.infinity,
                  // height: 125,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xffFF7622),
                        Color(0xffFDC140),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Burger\nCombo",
                        style: OtherScreens.brandsBanner,
                      ),
                      RichText(
                        text: TextSpan(
                            text: "40%",
                            style: OtherScreens.brandsPercent,
                            children: [
                              TextSpan(
                                text: " Off",
                                style: OtherScreens.brandsDis,
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                            color: AppColors.whiteBox,
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "FREE SHIPPING",
                          style: OtherScreens.brandBtnText,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: SvgPicture.asset(
                    AppAssets.foodBanner,
                    height: 165,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 35.h,
              child: ListView.builder(
                itemCount: controller.textItems.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                    child: GestureDetector(
                      onTap: () {
                        controller.selectItem(index);
                        print("index: $index");
                      },
                      child: Obx(() {
                        return Container(
                          // width: 100.w,
                          // height: 450,
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            // vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: controller.getPageIndicatorColor(index),
                            borderRadius: BorderRadius.circular(70.r),
                          ),
                          child: Center(
                            child: Text(
                              controller.textItems[index],
                              textAlign: TextAlign.center,
                              style:
                                  controller.getPageIndicatorTextStyle(index),
                            ),
                          ),
                        );
                      }),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Container(
              height: 4,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: controller.textItems.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: GestureDetector(
                      onTap: () {
                        controller.selectItem(index);
                        print("index: $index");
                      },
                      child: Obx(() {
                        return AnimatedContainer(
                          duration: Duration(milliseconds: 700),
                          curve: Curves.easeInOut,
                          width: controller.getWidthCarousal(index),
                          height: 4,
                          decoration: BoxDecoration(
                            color:
                                controller.getPageIndicatorColorCarousal(index),
                            borderRadius: BorderRadius.circular(70.r),
                          ),
                        );
                      }),
                    ),
                  );
                },
              ),
            ),
            Obx(() {
              switch (controller.selectedIndex.value) {
                case 0:
                  return SandwichSection();
                case 1:
                  return Container();
                case 2:
                  return Container();
                case 3:
                  return Container();
                default:
                  return Container();
              }
            }),
          ],
        ),
      ),
    );
  }
}
