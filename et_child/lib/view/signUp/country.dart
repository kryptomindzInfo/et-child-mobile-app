import 'package:dropdown_search/dropdown_search.dart';
import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/controllers/signUp/signup_country_controller.dart';
import 'package:et_child/global/countries_list.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/signUp/nextLevel.dart';
import 'package:et_child/view/signUp/signup_mobileno.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CountrySelectionScreen extends StatefulWidget {
  const CountrySelectionScreen({super.key});

  @override
  State<CountrySelectionScreen> createState() => _CountrySelectionScreenState();
}

class _CountrySelectionScreenState extends State<CountrySelectionScreen> {
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
                      "Where do you live?",
                      style: AuthTestStyle.subHeading,
                    ),
                  ),
                  SizedBox(
                    height: 45.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              menuProps: MenuProps(
                                  backgroundColor: AppColors.selectorBox,
                                  borderRadius: BorderRadius.circular(20)),
                              showSearchBox: true,
                              searchFieldProps: TextFieldProps(
                                style: TextformFieldTextStyle.mainText,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColors.whiteColor,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 7, horizontal: 20),
                                  hintText: "Search",
                                  hintStyle: TextformFieldTextStyle.hint,
                                  suffixIcon:
                                      Image.asset(AppAssets.icon_search),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide:BorderSide.none
                                  ),
                                  // focusedBorder: InputBorder.none,
                                  // enabledBorder: InputBorder.none,
                                  // disabledBorder: InputBorder.none,
                                ),
                              ),
                              itemBuilder: (context, item, isSelected) {
                                Countries country = countryController
                                    .filteredCountries
                                    .firstWhere((c) => c.name == item);
                                return Container(
                                  color: AppColors.selectorBox,
                                  child: ListTile(
                                    leading: Text(country.flag,style: TextStyle(fontSize: 20),),
                                    title: Text(country.name),
                                  ),
                                );
                              },
                            ),
                            items: countryController.filteredCountries
                                .map((country) => country.name)
                                .toList(),
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 0),
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  borderSide: BorderSide(
                                    color: AppColors.textfieldBorder,
                                    width: 1.5,
                                  ),
                                ),
                              ),
                            ),
                            onChanged: (value) {
                              if (value != null) {
                                countryController.changeSelectedCountry(value);
                              }
                            },
                            selectedItem: countryController
                                    .selectedCountry.value.isNotEmpty
                                ? countryController.selectedCountry.value
                                : null,
                            dropdownBuilder: (context, selectedItem) {
                              if (selectedItem == null) {
                                return Text(
                                  'Country',
                                  style: TextformFieldTextStyle.hint,
                                );
                              } else {
                                Countries country = countryController
                                    .filteredCountries
                                    .firstWhere((c) => c.name == selectedItem);
                                return Container(
                                  child: Row(
                                    children: <Widget>[
                                      Text(country.flag),
                                      SizedBox(width: 10),
                                      Text(country.name),
                                    ],
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ),
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
                          () => SignUpMobileNo(),
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
