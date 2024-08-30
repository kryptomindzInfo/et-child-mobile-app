import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/custom_widgets/datePicker_widget.dart';
import 'package:et_child/view/custom_widgets/textFiledWidgets.dart';
import 'package:et_child/view/signUp/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DOBScreen extends StatefulWidget {
  const DOBScreen({super.key});

  @override
  State<DOBScreen> createState() => _DOBScreenState();
}

class _DOBScreenState extends State<DOBScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.authBgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          AppAssets.light_logo,
          filterQuality: FilterQuality.high,
          height: 35,
        ),
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
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
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
      ),
      body: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              40,
            ),
            topRight: Radius.circular(
              40,
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: AppColors.bgColor,
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Enter your Date of birth.",
                    style: AuthTestStyle.subHeading,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  child: Text(
                    "DOB as your official documents.",
                    style: AuthTestStyle.muted,
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                Container(
                  child: Row(
                    children: [
                      DatePickerWidget(
                        labelText: 'yyyy/mm/dd',
                        
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 22.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 277.w,
                  child: ButtonWidget(
                    minHeight: 50.h,
                    color: AppColors.primarybtnColor,
                    text: Text(
                      "Continue",
                      style: ButtonTextStyle.primary,
                    ),
                    onPressed: () {
                      Get.to(
                        () => CountrySelectionScreen(),
                        transition: Transition.cupertino,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
