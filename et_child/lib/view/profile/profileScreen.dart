import 'package:et_child/constants/app_assets.dart';
import 'package:et_child/constants/colors.dart';
import 'package:et_child/constants/textStyles.dart';
import 'package:et_child/view/custom_widgets/textFiledWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2E3190), // Dark grey background
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text('Profile', style: ProfileScreensText.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 10.h),
                          child: Image.asset(
                            alignment: Alignment.centerLeft,
                            AppAssets.profile_image2,
                            height: 150,
                          ),
                        ),
                        IconButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              AppColors.redText,
                            ),
                            side: WidgetStatePropertyAll(
                              BorderSide(
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          icon: Image.asset(
                            AppAssets.edit,
                            color: AppColors.whiteColor,
                            height: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  "Akash Patel",
                  style: ProfileScreensText.userName,
                ),
              ),
              Container(
                child: Text(
                  "Age 12",
                  style: ProfileScreensText.userDob,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.bgColor, // Purple background
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildTextField('Your Name', 'Akash Patel'),
                    _buildTextField('Date of birth', '16/11/2013'),
                    _buildTextField('Country', 'United Kingdom'),
                    _buildTextField('Mobile number', '+44-93123135'),
                    _buildTextField('Passcode', '****', obscureText: true),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint,
      {bool obscureText = false}) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: ProfileScreensText.lable,
          ),
          SizedBox(height: 5),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              border: Border.all(
                color: AppColors.textfieldBorder,
                width: 1.5,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              // controller: controller,
              // onChanged: widget.onChange,
              // maxLines: widget.maxLines,
              // validator: widget.validator,
              // inputFormatters: widget.inputFormatters,
              // keyboardType: widget.keyboardType,
              // readOnly: widget.readOnly,
              // onTap: widget.onTap,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                border: InputBorder.none,
                hintText: hint,
                // labelStyle: TextformFieldTextStyle.hint,
                // labelText: widget.labelText,
                // suffixIcon: widget.suffixIcon,
              ),
              // autofillHints: widget.autofillHints,
            ),
          ),
        ],
      ),
    );
  }
}
