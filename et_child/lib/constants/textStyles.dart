import 'package:et_child/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonTextStyle {
  static TextStyle get primary => GoogleFonts.lato(
        fontSize: 16.0,
        color: AppColors.primaryBtnText,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get decline => GoogleFonts.lato(
        fontSize: 16.0,
        color: AppColors.declinedBtnText,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get secondary => GoogleFonts.lato(
        fontSize: 15.0,
        // color: AppColors.secondaryBtnText,
        fontWeight: FontWeight.bold,
      );
}

class OnboardingTextStyle {
  static TextStyle get heading => GoogleFonts.lato(
        fontSize: 35.0,
        height: 1.1,
        color: AppColors.redText,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get text => GoogleFonts.lato(
        fontSize: 18.0,
        // height: 1,
        wordSpacing: 1,
        color: AppColors.blueText,
        fontWeight: FontWeight.w600,
      );
}

class AuthTestStyle {
  static TextStyle get link => GoogleFonts.lato(
        fontSize: 15.0,
        color: AppColors.blueText,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get redLink => GoogleFonts.lato(
      fontSize: 15.0,
      color: AppColors.redText,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline);
  static TextStyle get heading => GoogleFonts.lato(
        fontSize: 35.0,
        color: AppColors.redText,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get subHeading => GoogleFonts.lato(
        fontSize: 25.0,
        color: AppColors.redText,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get popupTitle => GoogleFonts.lato(
        fontSize: 25.0,
        color: AppColors.blackText,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get popupTitle2 => GoogleFonts.lato(
        fontSize: 20.0,
        color: AppColors.blackText,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get muted => GoogleFonts.lato(
        fontSize: 15.0,
        color: AppColors.blueText,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get text => GoogleFonts.lato(
        fontSize: 15.0,
        color: AppColors.blueText,
        fontWeight: FontWeight.normal,
      );
}

class TextformFieldTextStyle {
  static TextStyle get hint => GoogleFonts.workSans(
        fontSize: 14.0,
        color: AppColors.hintText,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get mainText => GoogleFonts.workSans(
        fontSize: 14.0,
        color: AppColors.blackText,
        fontWeight: FontWeight.normal,
      );
}

class DashTextStyle {
  static TextStyle get pageTitle => GoogleFonts.sora(
        fontSize: 16.0,
        color: AppColors.blueText,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get pageTitle2 => GoogleFonts.lato(
        fontSize: 25.0,
        color: AppColors.redText,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get activeTabText => GoogleFonts.lato(
        fontSize: 16.0,
        color: AppColors.activetabText,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get inactiveTabText => GoogleFonts.lato(
        fontSize: 16.0,
        color: AppColors.inactivetabText,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get bigHeading => GoogleFonts.sora(
        fontSize: 48.0,
        color: AppColors.blueText,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get heading => GoogleFonts.sora(
        fontSize: 16.0,
        color: AppColors.redText,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get bodyText => GoogleFonts.workSans(
        fontSize: 16.0,
        height: 1,
        color: AppColors.bodyText,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get subBodyText => GoogleFonts.lato(
        fontSize: 15.0,
        color: AppColors.bodyText,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get childBtnTextStyle => GoogleFonts.workSans(
        fontSize: 15.0,
        color: AppColors.redText,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get listTitle => GoogleFonts.lato(
        fontSize: 15.0,
        color: AppColors.blueText,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get listReminder => GoogleFonts.lato(
        fontSize: 10.0,
        color: AppColors.error,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get listReminder2 => GoogleFonts.lato(
        fontSize: 10.0,
        color: AppColors.textfieldBorder,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get listTrail => GoogleFonts.sora(
        fontSize: 15.0,
        color: AppColors.blueText,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get listDiscription => GoogleFonts.workSans(
        fontSize: 12.0,
        color: AppColors.mutedText,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get brandsText => GoogleFonts.workSans(
        fontSize: 14.0,
        color: AppColors.mutedText,
        fontWeight: FontWeight.w800,
      );
}

class ProfileScreensText {
  static TextStyle get lable => GoogleFonts.poppins(
        fontSize: 14.0,
        color: AppColors.redText,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get title => GoogleFonts.sora(
        fontSize: 16.0,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get userName => GoogleFonts.lato(
        fontSize: 20.0,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get userDob => GoogleFonts.lato(
        fontSize: 14.0,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.normal,
      );
}

class OtherScreens {
  static TextStyle get pageTitle => GoogleFonts.sora(
        fontSize: 16.0,
        color: AppColors.redText,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get brandsBanner => GoogleFonts.lemon(
        fontSize: 26.0,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get GamesBanner => GoogleFonts.lemon(
        fontSize: 26.0,
        height: 0.9,
        color: AppColors.blueText,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get amuntHint => GoogleFonts.lato(
        fontSize: 24.0,
        color: AppColors.redText,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get brandsPercent => GoogleFonts.lato(
        fontSize: 20.0,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get GamesPercent => GoogleFonts.lato(
        fontSize: 20.0,
        color: AppColors.redText,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get brandsDis => GoogleFonts.lato(
        fontSize: 8.0,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get brandsName => GoogleFonts.lato(
        fontSize: 14.0,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get brandBtnText => GoogleFonts.lato(
        fontSize: 10.0,
        color: AppColors.blueText,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get heading => GoogleFonts.lato(
        fontSize: 36.0,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get description => GoogleFonts.lato(
        fontSize: 14.0,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get priceTitle => GoogleFonts.lato(
        fontSize: 14.0,
        color: AppColors.blueText,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get discPrice => GoogleFonts.lato(
        decoration: TextDecoration.lineThrough,
        fontSize: 10.0,
        color: AppColors.mutedText,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get chargesPrice => GoogleFonts.lato(
        fontSize: 10.0,
        color: AppColors.mutedText,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get offerDate => GoogleFonts.lato(
        fontSize: 12.0,
        color: AppColors.mutedText.withOpacity(0.5),
        fontWeight: FontWeight.normal,
      );
  static TextStyle get pera => GoogleFonts.lato(
        fontSize: 12.0,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get subHeading => GoogleFonts.lato(
        fontSize: 16.0,
        color: AppColors.bodyText,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get productHead => GoogleFonts.sen(
        fontSize: 9.0,
        color: AppColors.bodyText,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get regularText => GoogleFonts.lato(
        fontSize: 10.0,
        color: AppColors.bodyText,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get regularText2 => GoogleFonts.lato(
        fontSize: 12.0,
        color: AppColors.bodyText,
        fontWeight: FontWeight.normal,
      );
  static TextStyle get amuntTxt => GoogleFonts.lato(
        fontSize: 12.0,
        color: AppColors.blueText,
        fontWeight: FontWeight.bold,
      );
}
