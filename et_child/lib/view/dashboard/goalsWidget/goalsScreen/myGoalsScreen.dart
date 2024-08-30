import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/home/homecontroller.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/custom_widgets/datePicker_widget.dart';
import 'package:et_child/view/custom_widgets/parentThemeScaffold.dart';
import 'package:et_child/view/custom_widgets/searchtext.dart';
import 'package:et_child/view/custom_widgets/textFiledWidgets.dart';
import 'package:et_child/view/dashboard/AccountWidget/accountScreen.dart';
import 'package:et_child/view/dashboard/cardWidget/cardScreen.dart';
import 'package:et_child/view/dashboard/goalsWidget/goalsWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyGoalsScreen extends StatefulWidget {
  const MyGoalsScreen({super.key});

  @override
  State<MyGoalsScreen> createState() => _MyGoalsScreenState();
}

class _MyGoalsScreenState extends State<MyGoalsScreen> {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: Text(
          "Goals",
          style: DashTextStyle.pageTitle2,
        ),
        iconTheme: IconThemeData(
          color: AppColors.blackColor,
          size: 30,
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_rounded,
          ),
        ),
        toolbarHeight: 100,
        backgroundColor: AppColors.bgColor,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Goals",
                      style: DashTextStyle.heading,
                    ),
                    Text(
                      "\$20",
                      style: DashTextStyle.subBodyText,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                        width: 170,
                        height: 170,
                        padding: EdgeInsets.all(10),
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: AppColors.bgColor,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              AppAssets.mygoal1,
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "School Trip",
                                    style: DashTextStyle.activeTabText,
                                  ),
                                  Text(
                                    "\$10",
                                    style: DashTextStyle.activeTabText,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: AppColors.inActiveTabButtons,
                                  ),
                                ),
                                Container(
                                  width: 0.h,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: AppColors.progressBar,
                                    // color: AppColors.inActiveTabButtons,

                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      child: Container(
                        width: 170,
                        height: 170,
                        padding: EdgeInsets.all(10),
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: AppColors.bgColor,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              AppAssets.mygoal2,
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Shoes",
                                    style: DashTextStyle.activeTabText,
                                  ),
                                  Text(
                                    "\$18",
                                    style: DashTextStyle.activeTabText,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: AppColors.inActiveTabButtons,
                                  ),
                                ),
                                Container(
                                  width: 50.h,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: AppColors.progressBar,
                                    // color: AppColors.inActiveTabButtons,

                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                        width: 170,
                        height: 170,
                        padding: EdgeInsets.all(10),
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: AppColors.bgColor,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              AppAssets.mygoal3,
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Zain’s gift",
                                    style: DashTextStyle.activeTabText,
                                  ),
                                  Text(
                                    "\$9",
                                    style: DashTextStyle.activeTabText,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: AppColors.inActiveTabButtons,
                                  ),
                                ),
                                Container(
                                  width: 120.h,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: AppColors.progressBar,
                                    // color: AppColors.inActiveTabButtons,

                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      child: Container(
                        width: 170,
                        height: 170,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
