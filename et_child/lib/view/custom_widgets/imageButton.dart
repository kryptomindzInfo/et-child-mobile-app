import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageButton extends StatefulWidget {
  ImageButton({
    Key? key,
    @required this.color,
    @required this.image,
    @required this.onPressed,
    this.borderRadius,
    this.borderColor,
    this.height,
    this.minwidth,
  }) : super(key: key);

  final Color? color;
  final Color? borderColor;
  final Widget? image;
  final VoidCallback? onPressed;
  final double? borderRadius;
  final double? height;
  final double? minwidth;

  @override
  State<ImageButton> createState() => _ImageButtonState();
}

class _ImageButtonState extends State<ImageButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: widget.height,
      minWidth: widget.minwidth,
      onPressed: widget.onPressed,
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 15,
      ),
      color: widget.color,
      disabledElevation: 0,
      disabledColor: Get.theme.focusColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            widget.borderRadius ?? 10.0,
          ),
          side: BorderSide(
            color: widget.borderColor ?? Colors.transparent,
          )),
      elevation: 0,
      child: widget.image,
    );
  }
}
