import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';

class PrimaryTextFieldWidget extends StatefulWidget {
  final String labelText;
  final String hintText;
  final int maxLines;
  final double verticalPadding;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Function(String)? onChange;
  final List<String>? autofillHints;
  final bool readOnly;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final Color? borderColor;
  final Color? fillColor;

  const PrimaryTextFieldWidget({
    Key? key,
    required this.labelText,
    this.hintText = '',
    this.maxLines = 1,
    this.verticalPadding = 15,
    this.validator,
    this.inputFormatters,
    this.keyboardType,
    this.controller,
    this.onChange,
    this.autofillHints,
    this.readOnly = false,
    this.onTap,
    this.suffixIcon,
    this.borderColor,
    this.fillColor,
  }) : super(key: key);

  @override
  State<PrimaryTextFieldWidget> createState() => _PrimaryTextFieldWidgetState();
}

class _PrimaryTextFieldWidgetState extends State<PrimaryTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      decoration: BoxDecoration(
        color: widget.fillColor?? AppColors.whiteColor,
        border: Border.all(
          color:widget.borderColor ?? AppColors.textfieldBorder,
          width: 1.5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        controller: widget.controller,
        onChanged: widget.onChange,
        maxLines: widget.maxLines,
        validator: widget.validator,
        inputFormatters: widget.inputFormatters,
        keyboardType: widget.keyboardType,
        readOnly: widget.readOnly,
        onTap: widget.onTap,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: widget.verticalPadding),
          border: InputBorder.none,
          hintText: widget.hintText,
          labelStyle: TextformFieldTextStyle.hint,
          labelText: widget.labelText,
          suffixIcon: widget.suffixIcon,
        ),
        autofillHints: widget.autofillHints,
      ),
    );
  }
}
