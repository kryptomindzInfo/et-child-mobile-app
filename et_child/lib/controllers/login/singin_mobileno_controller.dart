
import 'package:et_child/constants/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


class SigninMobileNoController extends GetxController {
  RxString mobileNo = ''.obs;

  Color getButtonColor() {
    return mobileNo == ''
        ? AppColors.primarybtnColor
        : AppColors.primarybtnColor;
  }

  Color getButtonTextColor() {
    return mobileNo == ''
        ? AppColors.primaryBtnText
        : AppColors.primaryBtnText;
  }
}
