import 'package:et_child/constants/colors.dart';
import 'package:et_child/view/dashboard/dashboardMainScreen.dart';
import 'package:et_child/view/login/loginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CardsController extends GetxController {
  final PageController pageController = PageController();
  var activePage = 0.obs;
  var seenPages = <bool>[true, false, false].obs;
  var lastPage = 0;
  void nextPage() {
    if (activePage.value < 1) {
      pageController.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    } else {
      Get.to(
        () => DashboardMainScreen(),
        transition: Transition.cupertino,
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
