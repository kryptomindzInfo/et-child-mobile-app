import 'package:et_child/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListItemWidget extends StatelessWidget {
  final String text;

  const ListItemWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 9),
          child: Image.asset(
            AppAssets.tick_icon,
            filterQuality: FilterQuality.high,
            height: 9,

          ),
        ),
        SizedBox(width: 15.w),
        Expanded(
          child: Text(
            textAlign: TextAlign.justify,
            text,
            style: AuthTestStyle.muted,
          ),
        ),
      ],
    );
  }
}
