import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/view/custom_widgets/button.dart';
import 'package:et_child/view/login/loginScanQrCode.dart';
import 'package:et_child/view/signUp/faceIdEnableScreen.dart';
import 'package:et_child/view/signUp/widget/verified_bottom_sheet_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BrandsOfferScreen extends StatefulWidget {
  const BrandsOfferScreen({super.key});

  @override
  State<BrandsOfferScreen> createState() => _BrandsOfferScreenState();
}

class _BrandsOfferScreenState extends State<BrandsOfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.authBgColor,
      appBar: AppBar(
        centerTitle: true,
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
        // toolbarHeight: 40,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 126,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: AppColors.whiteBox,
                  image: DecorationImage(
                    image: AssetImage(
                      AppAssets.nikeBanner,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "Nike Shoes",
                        style: OtherScreens.heading,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Description",
                        style: OtherScreens.description,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur. Egestas ornare at fermentum sed ac morbi egestas mi quisque. Pellentesque nunc lobortis augue urna. Orci ut in sed orci nunc viverra. Magna varius amet scelerisque nunc mattis. Velit et sapien erat sapien nulla. Consectetur mauris nisl mauris etiam eget consectetur pulvinar imperdiet id. Nullam vitae suspendisse aliquet elit scelerisque nulla quam cursus arcu.",
                        textAlign: TextAlign.justify,
                        style: OtherScreens.pera,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        "About Nike Shoes",
                        style: OtherScreens.description,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur. Egestas ornare at fermentum sed ac morbi egestas mi quisque. Pellentesque nunc lobortis augue urna. Orci ut in sed orci nunc viverra. Magna varius amet scelerisque nunc mattis. Velit et sapien erat sapien nulla. Consectetur mauris nisl mauris etiam eget consectetur pulvinar imperdiet id. Nullam vitae suspendisse aliquet elit scelerisque nulla quam cursus arcu.",
                        textAlign: TextAlign.justify,
                        style: OtherScreens.pera,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Nike Shoes",
                                        style: OtherScreens.priceTitle,
                                      ),
                                      Text(
                                        "£ 52",
                                        style: OtherScreens.discPrice,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Ends on 13-Jun-2023 11:00",
                                        style: OtherScreens.offerDate,
                                      ),
                                      Text(
                                        "£ 39",
                                        style: OtherScreens.priceTitle,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  width: double.infinity,
                                  color: AppColors.blackColor,
                                  height: 1,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Delivery Charges",
                                        style: OtherScreens.offerDate,
                                      ),
                                      Text(
                                        "£ 0",
                                        style: OtherScreens.chargesPrice,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Total Price",
                                        style: OtherScreens.priceTitle,
                                      ),
                                      Text(
                                        "£ 39",
                                        style: OtherScreens.priceTitle,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: ButtonWidget(
                              color: AppColors.primaryColor,
                              text: Text(
                                "Get this offer now",
                                style: ButtonTextStyle.primary,
                              ),
                              onPressed: () {},
                              borderColor: null,
                              minHeight: 48,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
