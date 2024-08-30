import 'package:et_child/constants/colors.dart';
import 'package:et_child/controllers/dashboard/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ParentThemeScaffold extends StatefulWidget {
  final Widget? child;
  final Widget? drawer;
  final PreferredSizeWidget? appbar;
  ParentThemeScaffold({
    Key? key,
    @required this.child,
    this.drawer,
    @required this.appbar,
  }) : super(key: key);

  @override
  State<ParentThemeScaffold> createState() => _ParentThemeScaffoldState();
}

class _ParentThemeScaffoldState extends State<ParentThemeScaffold> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: widget.appbar,
      key: widget.key,
      drawer: widget.drawer,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: widget.child,
      ),
    );
  }
}
