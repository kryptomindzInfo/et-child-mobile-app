import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/challanges/challanges_controller.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/dashboard/chalangesWidget/challangesSlides/widget/challangesSlid1.dart';
import 'package:et_child/view/dashboard/chalangesWidget/challangesSlides/widget/challangesSlid2.dart';
import 'package:et_child/view/dashboard/chalangesWidget/challangesSlides/widget/challangesSlid3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart'; // Add this import

class ChallangesSlideScreen extends StatefulWidget {
  @override
  State<ChallangesSlideScreen> createState() => _ChallangesSlideScreenState();
}

class _ChallangesSlideScreenState extends State<ChallangesSlideScreen> {
  final ChallangesController onboardingController =
      Get.put(ChallangesController());

  final List<Widget> _pages = [
    ChallangeSlide1(),
    ChallangeSlide2(),
    ChallangeSlide3(),
  ];

  @override
  void initState() {
    super.initState();
    // Enforce portrait mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    // Reset to the default orientations when disposing the widget
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppAssets.onboarding_bg,
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            AppAssets.logo,
            filterQuality: FilterQuality.high,
            // height: 35,
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          toolbarHeight: 100,
        ),
        bottomNavigationBar: Container(
          height: 130,
          // color:Colors.red,
          padding: EdgeInsets.symmetric(
            horizontal: 15.w,
          ),
          child: Column(
            children: [
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (index) {
                    return Container(
                      width: 15,
                      height: 15,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color:
                            onboardingController.getPageIndicatorColor(index),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                width: 270.w,
                child: Obx(() => ButtonWidget(
                      color: AppColors.secondarybtnColor,
                      text: Text(
                        onboardingController.activePage.value == 2
                            ? "Ask for challenge"
                            : "Next",
                        style: ButtonTextStyle.primary,
                      ),
                      onPressed: () {
                        onboardingController.nextPage(context);
                      },
                    )),
              )
            ],
          ),
        ),
        body: PageView.builder(
          controller: onboardingController.pageController,
          onPageChanged: onboardingController.onPageChanged,
          itemCount: _pages.length,
          itemBuilder: (context, index) {
            return _pages[index];
          },
          physics: NeverScrollableScrollPhysics(), // Disable manual scrolling
        ),
      ),
    );
  }
}
