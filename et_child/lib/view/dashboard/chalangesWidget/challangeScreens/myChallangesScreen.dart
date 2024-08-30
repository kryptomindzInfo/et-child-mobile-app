import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/home/homecontroller.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/dashboard/dashboardMainScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyChallangesScreen extends StatefulWidget {
  const MyChallangesScreen({super.key});

  @override
  State<MyChallangesScreen> createState() => _MyChallangesScreenState();
}

class _MyChallangesScreenState extends State<MyChallangesScreen> {
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
              "Challenges",
              style: DashTextStyle.pageTitle2,
            ),
            Text(
              "Complete the challenges to earn.",
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
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "To do list  - 2",
                      style: DashTextStyle.heading,
                    ),
                    Text(
                      "\$6 to earn",
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.childAppBarColor,
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    ListTile(
                      // titleAlignment: ListTileTitleAlignment.top,
                      leading: Checkbox(
                        side: BorderSide(color: Color(0xff8B8FFF), width: 2),
                        value: isChecked1,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked1 = value!;
                          });
                        },
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tidy up bedroom',
                            style: DashTextStyle.listTitle,
                          ),
                          Text(
                            'Complete by today',
                            style: DashTextStyle.listReminder,
                          ),
                        ],
                      ),
                      trailing: Text(
                        '\$3',
                        style: DashTextStyle.listTrail,
                      ),
                    ),
                    ListTile(
                      leading: Checkbox(
                        side: BorderSide(color: Color(0xff8B8FFF), width: 2),
                        value: isChecked2,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked2 = value!;
                          });
                        },
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Read everyday',
                            style: DashTextStyle.listTitle,
                          ),
                          Text(
                            'Complete by Sunday',
                            style: DashTextStyle.listReminder2,
                          ),
                        ],
                      ),
                      // subtitle: Text(
                      //   'Complete by Sunday',
                      //   style: DashTextStyle.listReminder2,
                      // ),
                      trailing: Text(
                        '\$3',
                        style: DashTextStyle.listTrail,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Completed - 1",
                      style: DashTextStyle.heading,
                    ),
                    Text(
                      "\$3 to be paid",
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.childAppBarColor,
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    ListTile(
                      // titleAlignment: ListTileTitleAlignment.top,
                      leading: Checkbox(
                        side: BorderSide(color: Color(0xff8B8FFF), width: 2),
                        value: isChecked1,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked1 = value!;
                          });
                        },
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Complete homework',
                            style: DashTextStyle.listTitle,
                          ),
                          Text(
                            'Completed yesterday',
                            style: DashTextStyle.listReminder,
                          ),
                        ],
                      ),
                      trailing: Text(
                        '\$3',
                        style: DashTextStyle.listTrail,
                      ),
                    ),
                    
                  ],
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
                            "Done",
                            style: ButtonTextStyle.primary,
                          ),
                          onPressed: () {
                            Get.to(
                              () => DashboardMainScreen(),
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
