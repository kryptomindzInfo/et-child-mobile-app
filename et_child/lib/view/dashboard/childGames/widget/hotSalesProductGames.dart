import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotesalesproductGames extends StatefulWidget {
  HotesalesproductGames({super.key, this.title, this.amunt, this.image});

  String? title;
  String? image;
  String? amunt;

  @override
  State<HotesalesproductGames> createState() => _HotesalesproductGamesState();
}

class _HotesalesproductGamesState extends State<HotesalesproductGames> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        width: 135,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xff64DAFF).withAlpha(70),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                      color: AppColors.whiteBox,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Free Shipping",
                    style: OtherScreens.brandBtnText,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              widget.image ?? AppAssets.nike_shoes,
              fit: BoxFit.cover,
              height: 90.h,
              // width: 263.w,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: Text(
                widget.title ?? "Nike Shoes",
                style: OtherScreens.productHead,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              width: double.infinity,
              child: Text(
                widget.amunt ?? "£ 29 ",
                style: OtherScreens.amuntTxt,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
