import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/view/dashboard/chalangesWidget/challangeScreens/myChallangesScreen.dart';
import 'package:et_child/view/signUp/widget/verified_bottom_sheet_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChallangesController extends GetxController {
  final PageController pageController = PageController();
  var activePage = 0.obs;
  var seenPages = <bool>[true, false, false].obs;
  var lastPage = 0;
  void nextPage(context) {
    if (activePage.value < 2) {
      pageController.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    } else {
      showModalBottomSheet(
        context: context,
        backgroundColor: AppColors.transparent,
        builder: (context) {
          return Container(
            margin: const EdgeInsets.all(20),
            child: VerifiedBottomSheetWidget(
              height: 249,
              title: Text(
                "Challenge request sent.",
                style: AuthTestStyle.popupTitle,
              ),
            ),
          );
        },
      );
      Future.delayed(
        Duration(seconds: 2),
        () {
          // Replace with the screen you want to navigate to
          Navigator.pop(context);
          Get.to(
            () => MyChallangesScreen(),
            transition: Transition.cupertino,
          );
        },
      );
    }
  }

  void onPageChanged(int page) {
    if (page > lastPage) {
      seenPages[page] = true;
    }
    lastPage = page;
    activePage.value = page;
  }

  Color getPageIndicatorColor(int index) {
    return seenPages[index]
        ? AppColors.secondaryColor
        : AppColors.disabledColor;
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
