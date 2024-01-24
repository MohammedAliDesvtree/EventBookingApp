import 'controller/menu_white_controller.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MenuWhiteScreen extends GetWidget<MenuWhiteController> {
  const MenuWhiteScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 35.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildUpgradeProSection(),
                    Container(
                      height: 679.v,
                      width: 124.h,
                      margin: EdgeInsets.only(
                        top: 21.v,
                        bottom: 30.v,
                      ),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Opacity(
                            opacity: 0.2,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgRectangle4161,
                              height: 580.v,
                              width: 124.h,
                              alignment: Alignment.center,
                            ),
                          ),
                          Opacity(
                            opacity: 0.2,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgRectangle4159,
                              height: 630.v,
                              width: 109.h,
                              alignment: Alignment.centerRight,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgHome1,
                            height: 679.v,
                            width: 88.h,
                            radius: BorderRadius.circular(
                              40.h,
                            ),
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUpgradeProSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle4158,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        SizedBox(height: 13.v),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "lbl_ashfak_sayem".tr,
            style: CustomTextStyles.titleMediumBlack900,
          ),
        ),
        SizedBox(height: 47.v),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLockGray60001,
                height: 23.adaptSize,
                width: 23.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 2.v,
                ),
                child: Text(
                  "lbl_my_profile".tr,
                  style: CustomTextStyles.bodyLargeBlack90016,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 34.v),
        Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 23.v,
                width: 24.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  top: 2.v,
                ),
                child: Text(
                  "lbl_massage".tr,
                  style: CustomTextStyles.bodyLargeBlack90016,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 34.v),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup18858,
                height: 23.adaptSize,
                width: 23.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Text(
                  "lbl_calender".tr,
                  style: CustomTextStyles.bodyLargeBlack90016,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 35.v),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup18859,
                height: 23.adaptSize,
                width: 23.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Text(
                  "lbl_bookmark".tr,
                  style: CustomTextStyles.bodyLargeBlack90016,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 35.v),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLockGray6000123x23,
                height: 23.adaptSize,
                width: 23.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Text(
                  "lbl_contact_us".tr,
                  style: CustomTextStyles.bodyLargeBlack90016,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 35.v),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSearch,
                height: 23.adaptSize,
                width: 23.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 2.v,
                ),
                child: Text(
                  "lbl_settings".tr,
                  style: CustomTextStyles.bodyLargeBlack90016,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 33.v),
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgProfile,
                height: 23.adaptSize,
                width: 23.adaptSize,
                margin: EdgeInsets.only(bottom: 1.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 3.v,
                ),
                child: Text(
                  "lbl_helps_faqs".tr,
                  style: CustomTextStyles.bodyLargeBlack90016,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 33.v),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup18861,
                height: 23.adaptSize,
                width: 23.adaptSize,
                margin: EdgeInsets.only(bottom: 1.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 3.v,
                ),
                child: Text(
                  "lbl_sign_out".tr,
                  style: CustomTextStyles.bodyLargeBlack90016,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomElevatedButton(
          height: 46.v,
          width: 150.h,
          text: "lbl_upgrade_pro".tr,
          margin: EdgeInsets.only(left: 1.h),
          leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgTelevision,
              height: 19.v,
              width: 21.h,
            ),
          ),
          buttonStyle: CustomButtonStyles.fillCyanA,
          buttonTextStyle: CustomTextStyles.bodyMediumCyanA400,
        ),
      ],
    );
  }
}
