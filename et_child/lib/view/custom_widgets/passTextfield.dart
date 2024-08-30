import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputFieldPass extends StatelessWidget {
  final String? hintText;
  final onchanged;
  final ValueChanged<String> onFieldSubmitted;
  final controller;
  final bool obsecurText;

  const TextInputFieldPass({
    Key? key,
    this.hintText,
    this.controller,
    this.obsecurText = true,
    this.onchanged,
    required this.onFieldSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      onChanged: onchanged,
      obscureText: obsecurText,
      controller: controller,
      onFieldSubmitted: onFieldSubmitted,
      style:  TextStyle(
        fontFamily: 'Work_Sans',
        fontStyle: FontStyle.normal,
        // color: themeController.grey.value,
        fontWeight: FontWeight.normal,
        fontSize: 16,
        letterSpacing: 16,
      ),
      decoration: InputDecoration(
        hintStyle: TextStyle(
          fontFamily: 'Work_Sans',
          fontStyle: FontStyle.normal,
          // color: themeController.grey.value,
          fontWeight: FontWeight.normal,
          fontSize: 16,
          letterSpacing: 0,
        ),
        contentPadding: const EdgeInsets.fromLTRB(19, 16, 16, 12),
        hintText: hintText,
        isDense: true,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }
}
