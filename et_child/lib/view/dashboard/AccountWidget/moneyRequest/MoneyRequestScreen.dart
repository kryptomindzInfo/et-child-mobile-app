import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/dashboard/dashboard_controller.dart';
import 'package:et_child/controllers/home/homecontroller.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/custom_widgets/textFiledWidgets.dart';
import 'package:et_child/view/dashboard/dashboardMainScreen.dart';
import 'package:et_child/view/signUp/widget/verified_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MoneyRequestScreen extends StatefulWidget {
  const MoneyRequestScreen({super.key});

  @override
  State<MoneyRequestScreen> createState() => _MoneyRequestScreenState();
}

class _MoneyRequestScreenState extends State<MoneyRequestScreen> {
  final DashboardController dashController = Get.put(DashboardController());

  final HomeController controller = Get.put(HomeController());
  bool isChecked1 = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Money Request",
              style: DashTextStyle.pageTitle2,
            ),
            Text(
              "Send request for money to your parents.",
              style: AuthTestStyle.text,
            ),
          ],
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
                width: 349.w,
                height: 83.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.childAppBarColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 15.h, bottom: 15.h),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "USD",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: AppColors.blueText,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Image.asset(
                                AppAssets.downArrow,
                                // color: AppColors.primaryText,
                                width: 13.33.w,
                                height: 6.36.h,
                              ),
                            ],
                          ),
                          Text(
                            "Balance: \$ 0",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.bodyText,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 110.w),
                        child: Container(
                          width: 104.w,
                          height: 50.h,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.end,
                            style: OtherScreens.amuntHint,
                            onChanged: (value) {
                              // currencyController.validateValue(maxLimit, value);
                            },
                            decoration: InputDecoration(
                              hintText: "\$10",
                              isDense: true,

                              // contentPadding:
                              //     EdgeInsets.only(left: 0.w, top: 0, bottom: 0),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              hintStyle: OtherScreens.amuntHint,
                              border: InputBorder.none,
                              // errorText: "",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: PrimaryTextFieldWidget(
                  borderColor: AppColors.transparent,
                  fillColor: Color(0xffFFA9B8).withOpacity(0.3),
                  labelText: "Add note",
                  // hintText: "Add note",
                  verticalPadding: 10,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Builder(builder: (context) {
        final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
        return Padding(
          padding: EdgeInsets.only(bottom: keyboardHeight),
          child: Container(
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
                      "Request",
                      style: ButtonTextStyle.primary,
                    ),
                    onPressed: () {
                      setState(() {
                        dashController.requestSent = true;
                      });
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: AppColors.transparent,
                        builder: (context) {
                          return Container(
                            margin: const EdgeInsets.all(20),
                            child: VerifiedBottomSheetWidget(
                              height: 249,
                              title: Text(
                                "Money request for £10 is\nsent successfully.",
                                textAlign: TextAlign.center,
                                style: AuthTestStyle.popupTitle2,
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
                            () => DashboardMainScreen(),
                            transition: Transition.cupertino,
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
