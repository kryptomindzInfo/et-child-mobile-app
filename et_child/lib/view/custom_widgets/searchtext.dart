import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatefulWidget {
  SearchBarWidget({this.onChanged, this.hintText});
  String? hintText = "Home";
  void Function(String)? onChanged;

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35.h,
      child: TextFormField(
        onChanged: widget.onChanged,
        style: TextformFieldTextStyle.mainText,
        decoration: InputDecoration(
          hintText: widget.hintText,
          contentPadding: EdgeInsets.only(bottom: 2.h),
          hintStyle: TextformFieldTextStyle.hint,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.r),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: AppColors.greyBox, // Replace with your color

          prefixIcon: Align(
            heightFactor: 1,
            widthFactor: 1,
            child: Image.asset(
              AppAssets.icon_search,
              width: 14.54.w,
              height: 14.54.h,
              color: AppColors.greyIcons,
            ), // Replace with your search icon
          ),
        ),
      ),
    );
  }
}
