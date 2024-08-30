import 'package:et_child/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      backgroundColor: Colors.transparent,
      toolbarHeight: 100,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
    80
  ); // Adjust the height if needed
}
