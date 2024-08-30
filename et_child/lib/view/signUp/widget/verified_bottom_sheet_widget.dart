
import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VerifiedBottomSheetWidget extends ConsumerWidget {
  final Widget title;
  final Widget? description;
  final Widget? spaceBtw;
  final double? height;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  const VerifiedBottomSheetWidget(
      {super.key,
      required this.title,
      this.description,
      this.height,
      this.color,
      this.padding,
      this.spaceBtw});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: height ?? 315,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: AppColors.bgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.check,
            height: 100,
            filterQuality: FilterQuality.high,
          ),
          SizedBox(
            height: 40,
          ),
          title,
          Padding(
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 70),
            child: description,
          ),
        ],
      ),
    );
  }
}
