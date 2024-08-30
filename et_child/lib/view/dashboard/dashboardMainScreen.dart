import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/dashboard/dashboard_controller.dart';
import 'package:et_child/controllers/home/homecontroller.dart';
import 'package:et_child/view/custom_widgets/parentThemeScaffold.dart';
import 'package:et_child/view/custom_widgets/searchtext.dart';
import 'package:et_child/view/dashboard/AccountWidget/accountScreen.dart';
import 'package:et_child/view/dashboard/cardWidget/cardScreen.dart';
import 'package:et_child/view/dashboard/chalangesWidget/challangesWidget.dart';
import 'package:et_child/view/dashboard/goalsWidget/goalsWidget.dart';
import 'package:et_child/view/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DashboardMainScreen extends StatefulWidget {
  const DashboardMainScreen({super.key});

  @override
  State<DashboardMainScreen> createState() => _DashboardMainScreenState();
}

class _DashboardMainScreenState extends State<DashboardMainScreen> {
  final HomeController controller = Get.put(HomeController());
  final DashboardController dashController = Get.put(DashboardController());
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      key: _drawerKey,
      drawer: DrawerSection(),
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Home",
          style: DashTextStyle.pageTitle,
        ),
        leadingWidth: 80,
        leading: IconButton(
          onPressed: () => _drawerKey.currentState!.openDrawer(),
          icon: Image.asset(
            AppAssets.profile_image,
            filterQuality: FilterQuality.high,
            height: 35,
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
      
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w),

        child: SingleChildScrollView(
          child: Column(
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
              Container(
                height: 39.h,
                child: ListView.builder(
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
                          return Container(
                            width: 100.w,
                            height: 39.h,
                            decoration: BoxDecoration(
                              color: controller.getPageIndicatorColor(index),
                              borderRadius: BorderRadius.circular(70.r),
                            ),
                            child: Center(
                              child: Text(
                                controller.textItems[index],
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
                height: 10.h,
              ),
              Obx(() {
                switch (controller.selectedIndex.value) {
                  case 0:
                    return AccountScreen();
                  case 1:
                    return CardScreen();
                  case 2:
                    return GoalsScreen();
                  case 3:
                    return ChallangesScreen();
                  default:
                    return Container();
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
