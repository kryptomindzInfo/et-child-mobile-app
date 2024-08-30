import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/home/homecontroller.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/custom_widgets/textFiledWidgets.dart';
import 'package:et_child/view/dashboard/goalsWidget/goalsScreen/myGoalsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddGoalsScreen extends StatefulWidget {
  const AddGoalsScreen({super.key});

  @override
  State<AddGoalsScreen> createState() => _AddGoalsScreenState();
}

class _AddGoalsScreenState extends State<AddGoalsScreen> {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add Goals",
              style: DashTextStyle.pageTitle2,
            ),
            Text(
              "Add goals to save money for it.",
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
                child: PrimaryTextFieldWidget(
                  labelText: "Add purpose",
                  verticalPadding: 5,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: PrimaryTextFieldWidget(
                  labelText: "Add money",
                  verticalPadding: 5,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Builder(
        builder: (context) {
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
                            "Continue",
                            style: ButtonTextStyle.primary,
                          ),
                          onPressed: () {
                            Get.to(
                              () => MyGoalsScreen(),
                              transition: Transition.cupertino,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
          );
        }
      ),
    );
  }
}
