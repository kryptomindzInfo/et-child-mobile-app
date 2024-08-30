import 'package:et_child/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatefulWidget {
  final Color? color;
  final Widget? text;
  final VoidCallback? onPressed;
  double? minWidth = 277.w;
  double? minHeight;
  final Color? borderColor;

  ButtonWidget({
    super.key,
    @required this.color,
    @required this.text,
    @required this.onPressed,
    this.minWidth,
    this.minHeight = 60,
    @required this.borderColor,
  });

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: widget.color,
      minWidth: widget.minWidth,
      height: widget.minHeight,
      onPressed: widget.onPressed,
      color: widget.color,
      disabledElevation: 0,
      disabledColor: Get.theme.focusColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
      elevation: 0,
      child: widget.text,
    );
  }
}

class DeclinedButton extends StatefulWidget {
  final Color? color;
  final Widget? text;
  final VoidCallback? onPressed;
  final double? minWidth;
  final double? minHeight;
  final Color? borderColor;
  final List<BoxShadow>? boxShadow;

  DeclinedButton({
    Key? key,
    this.color,
    this.text,
    this.onPressed,
    this.minWidth = 277.0,
    this.minHeight = 60.0,
    this.borderColor = AppColors.blueText,
    this.boxShadow,
  }) : super(key: key);

  @override
  State<DeclinedButton> createState() => _DeclinedButtonState();
}

class _DeclinedButtonState extends State<DeclinedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.color,
        boxShadow: widget.boxShadow,
        borderRadius: BorderRadius.circular(48.0),
      ),
      child: MaterialButton(
        splashColor: widget.color,
        minWidth: widget.minWidth,
        height: widget.minHeight,
        onPressed: widget.onPressed,
        color: widget.color,
        disabledElevation: 0,
        disabledColor: Get.theme.focusColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48.0),
          side: BorderSide(
            color: widget.borderColor ?? AppColors.blueText,
          ),
        ),
        elevation: 0,
        child: widget.text,
      ),
    );
  }
}
