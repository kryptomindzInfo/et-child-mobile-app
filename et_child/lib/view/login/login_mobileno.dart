import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/signUp/signup_country_controller.dart';
import 'package:et_child/global/countries_list.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/custom_widgets/textFiledWidgets.dart';
import 'package:et_child/view/login/loginVarification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginMobileNo extends StatefulWidget {
  @override
  State<LoginMobileNo> createState() => _LoginMobileNoState();
}

class _LoginMobileNoState extends State<LoginMobileNo> {
  final CountryController countryController = Get.put(CountryController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: AppColors.authBgColor,
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            AppAssets.light_logo,
            filterQuality: FilterQuality.high,
            height: 35,
          ),
          iconTheme: IconThemeData(
            color: AppColors.whiteColor,
            size: 30,
          ),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_rounded,
            ),
          ),
          backgroundColor: Colors.transparent,
          toolbarHeight: 100,
        ),
        body: Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                40,
              ),
              topRight: Radius.circular(
                40,
              ),
            ),
          ),
          child: Scaffold(
            backgroundColor: AppColors.bgColor,
            body: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Login to ET Bank",
                      style: AuthTestStyle.subHeading,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    child: Text(
                      "Enter your registered mobile number to login.",
                      style: AuthTestStyle.muted,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 80.w,
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: InputDecorator(
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(left: 4, right: 4),
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      borderSide: BorderSide(
                                          color: AppColors.textfieldBorder,
                                          width: 2),
                                    ),
                                  ),
                                  child: SizedBox(
                                    height: 42.h,
                                    child: DropdownButton<String>(
                                      menuMaxHeight: 300,
                                      isExpanded: true,
                                      hint: Text(
                                        'Country',
                                        style: TextformFieldTextStyle.hint,
                                      ),
                                      icon: Visibility(
                                        visible: false,
                                        child: Icon(Icons.arrow_back),
                                      ),
                                      value: countryController
                                          .selectedCountryCode.value,
                                      style: TextformFieldTextStyle.mainText,
                                      underline: const SizedBox(),
                                      borderRadius: BorderRadius.circular(4),
                                      dropdownColor: AppColors.greyBox,
                                      items: allCountries.map(
                                        (Countries country) {
                                          return DropdownMenuItem<String>(
                                            value: country.name,
                                            child: Row(
                                              children: <Widget>[
                                                Text(country.flag),
                                                SizedBox(width: 4),
                                                Text(country.dialCode),
                                              ],
                                            ),
                                          );
                                        },
                                      ).toList(),
                                      onChanged: (value) {
                                        countryController
                                            .changeSelectedCountry(value!);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: PrimaryTextFieldWidget(
                          
                          labelText: "Mobile Number",
                          verticalPadding: 4,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      // Expanded(
                      //   child: SizedBox(
                      //     child: TextFieldWidget(
                      //       style: TextStyle(color: AppColors.primaryText),
                      //       hintText: MyText.signupMobilehintText,
                      //       hintStyle: TextStyle(
                      //           color: AppColors.lightGreyText,
                      //           fontSize: 16,
                      //           fontWeight: FontWeight.w400,
                      //           fontFamily: MyTextStyles.worksansFamily),
                      //       keyboardType: TextInputType.number,
                      //       onChanged: (value) {
                      //         countryController.mobileNo.value = value;
                      //       },
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              padding: EdgeInsets.symmetric(vertical: 22.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 277.w,
                    child: ButtonWidget(
                      minHeight: 50.h,
                      color: AppColors.primarybtnColor,
                      text: Text(
                        "Continue",
                        style: ButtonTextStyle.primary,
                      ),
                      onPressed: () {
                        Get.to(
                          () => LoginVarification(),
                          transition: Transition.cupertino,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
