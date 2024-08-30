import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerItemsWidget extends StatefulWidget {
  final VoidCallback onPressed;
  final String assetPath;
  final String text;
  final double imageHeight;

  DrawerItemsWidget({
    super.key,
    required this.assetPath,
    required this.text,
    required this.onPressed,
    this.imageHeight = 25,
  });

  @override
  State<DrawerItemsWidget> createState() => _DrawerItemsWidgetState();
}

class _DrawerItemsWidgetState extends State<DrawerItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(padding: WidgetStatePropertyAll(EdgeInsets.all(0))),
        child: ListTile(
          title: Text(
            widget.text,
            // style: DrawerTextStyle.navItem,
          ),
          leading: Image.asset(
            widget.assetPath,
            // color: AppColors.secondaryText,
            height: widget.imageHeight,
            width: widget.imageHeight,
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right_outlined,
            // color: AppColors.secondaryText,
          ),
        ),
      ),
    );
  }
}
