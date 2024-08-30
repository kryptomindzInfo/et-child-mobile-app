import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentlyViewedProductGames extends StatelessWidget {
  RecentlyViewedProductGames(
      {super.key, this.color, this.title, this.amunt, required this.image});

  Color? color;
  String? title;
  String? amunt;
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            width: 170,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: 100.h,
                  // width: 263.w,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Text(
                      title ?? "Nike Shoes",
                      style: OtherScreens.regularText,
                    ),
                    Text(
                      amunt!,
                      style: OtherScreens.amuntTxt,
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              AppAssets.like,
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}
