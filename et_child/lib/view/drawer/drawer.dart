import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/view/drawer/drawerItem.dart';
import 'package:et_child/view/profile/profileScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DrawerSection extends StatefulWidget {
  const DrawerSection({super.key});

  @override
  State<DrawerSection> createState() => _DrawerSectionState();
}

class _DrawerSectionState extends State<DrawerSection> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        backgroundColor: Color(0xffF9F7FA),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        // color: AppColors.sectionsBorderColor,
                        width: 1,
                        color: Color(0xffE2E4E5),
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_rounded,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        child: Image.asset(
                          alignment: Alignment.centerLeft,
                          AppAssets.profile_image2,
                          height: 60,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 15.w,
                        ),
                        child: Text(
                          "Akash Patel",
                          style: AuthTestStyle.subHeading,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: AppColors.bgColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset(AppAssets.user),
                        title: const Text('Personal details'),
                        onTap: () {
                          Get.back();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileScreen(),),
                          );
                        }
                        // Handle personal details navigation
                        ,
                      ),
                      ListTile(
                        leading: const Icon(Icons.security),
                        title: const Text('Security & privacy'),
                        onTap: () {
                          // Handle security & privacy navigation
                        },
                      ),
                      ListTile(
                        leading: Image.asset(AppAssets.display),
                        title: const Text('Display'),
                        onTap: () {
                          // Handle display settings navigation
                        },
                      ),
                      ListTile(
                        leading: Image.asset(AppAssets.notificationBell_icon2),
                        title: const Text('Notifications'),
                        onTap: () {
                          // Handle notifications settings navigation
                        },
                      ),
                      ListTile(
                        leading: Image.asset(AppAssets.document),
                        title: const Text('Privacy information'),
                        onTap: () {
                          // Handle privacy information navigation
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: AppColors.bgColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset(AppAssets.power),
                        title: const Text('Close account'),
                        onTap: () {
                          // Handle close account action
                        },
                      ),
                      ListTile(
                        leading: Image.asset(
                          AppAssets.user,
                          color: AppColors.redText,
                        ),
                        title: const Text('Log out'),
                        onTap: () {
                          // Handle log out action
                        },
                      ),
                    ],
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
