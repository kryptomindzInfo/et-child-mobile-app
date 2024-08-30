import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxInt selectedIndex2 = 0.obs;
  RxInt selectedIndexana = 0.obs;

  final List<String> textItems = [
    'Accounts',
    'Cards',
    'Goals',
    'Challenges',
  ];
  final List<String> textItems2 = [
    'Overview',
    'Daily Streak',
    'Transfer',
    'Invest',
  ];
  final List<String> Analytics = [
    'General',
    'Expenses',
    'Income',
  ];

  //

  Color getPageIndicatorColor(int index) {
    return index == selectedIndex.value
        ? AppColors.activeTabButtons
        : AppColors.inActiveTabButtons;
  }

  TextStyle getPageIndicatorTextStyle(int index) {
    return index == selectedIndex.value
        ? DashTextStyle.activeTabText
        : DashTextStyle.inactiveTabText;
  }


  // 
  
  Color getPageIndicatorColor2(int index) {
    return index == selectedIndex2.value
        ? AppColors.activeTabButtons
        : AppColors.inActiveTabButtons;
  }

  Color getItemTextColor(int index) {
    return index == selectedIndex.value
        ? AppColors.activetabText
        : AppColors.inactivetabText;
  }

  Color getItemTextColor2(int index) {
    return index == selectedIndex2.value
        ? AppColors.activetabText
        : AppColors.inactivetabText;
  }

  Color getPageIndicatorColorAna(int index) {
    return index == selectedIndexana.value
        ? AppColors.activeTabButtons
        : AppColors.inActiveTabButtons;
  }

  Color getItemTextColorana(int index) {
    return index == selectedIndexana.value
        ? AppColors.activetabText
        : AppColors.inactivetabText;
  }

  void selectItem(int index) {
    if (index != selectedIndex.value) {
      selectedIndex.value = index;
    }
  }

  void selectItem2(int index) {
    if (index != selectedIndex2.value) {
      selectedIndex2.value = index;
    }
  }

  void selectItemana(int index) {
    if (index != selectedIndexana.value) {
      selectedIndexana.value = index;
    }
  }
}
