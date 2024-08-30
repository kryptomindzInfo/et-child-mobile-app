import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrandsController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxInt selectedIndex2 = 0.obs;
  RxInt selectedIndexana = 0.obs;

  final List<String> textItems = [
   'Technology',
    'Fashion',
    'Sports',
    'Home',
  ];

  //

  Color getPageIndicatorColor(int index) {
    return index == selectedIndex.value
        ? AppColors.inActiveTabButtons
        : AppColors.inActiveTabButtons;
  }

  TextStyle getPageIndicatorTextStyle(int index) {
    return index == selectedIndex.value
        ? DashTextStyle.inactiveTabText
        : DashTextStyle.inactiveTabText;
  }

  Color getPageIndicatorColorCarousal(int index) {
    return index == selectedIndex.value
        ? AppColors.redText
        : AppColors.inActiveTabButtons;
  }
  double getWidthCarousal(int index) {
    return index == selectedIndex.value
        ? 16
        : 4;
  }
  void selectItem(int index) {
    if (index != selectedIndex.value) {
      selectedIndex.value = index;
    }
  }

  // 

}
