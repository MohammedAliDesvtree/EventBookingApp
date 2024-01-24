import '../verification_screen/widgets/verification_item_widget.dart';
import 'controller/verification_controller.dart';
import 'models/verification_item_model.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:eventbookingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:eventbookingapp/widgets/custom_elevated_button.dart';
import 'package:eventbookingapp/widgets/custom_icon_button.dart';
import 'package:eventbookingapp/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class VerificationScreen extends GetWidget<VerificationController> {
  const VerificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 146.v,
                width: 242.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        height: 129.v,
                        width: 135.h,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgEllipse66129x135,
                                height: 129.v,
                                width: 135.h,
                                alignment: Alignment.center,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 24.h,
                                  top: 9.v,
                                  right: 89.h,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildAppBar(),
                                    SizedBox(height: 37.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgG430,
                                            height: 1.adaptSize,
                                            width: 1.adaptSize,
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgPath534,
                                            height: 1.adaptSize,
                                            width: 1.adaptSize,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(left: 28.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_verification".tr,
                              style: CustomTextStyles.headlineSmallMedium,
                            ),
                            SizedBox(height: 14.v),
                            SizedBox(
                              width: 214.h,
                              child: Text(
                                "msg_we_ve_send_you_the".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMediumGray9000115
                                    .copyWith(
                                  height: 1.67,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 35.h),
                        child: Obx(
                          () => CustomPinCodeTextField(
                            context: Get.context!,
                            controller: controller.otpController.value,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                      SizedBox(height: 40.v),
                      SizedBox(
                        height: 58.v,
                        width: 271.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 58.v,
                                width: 271.h,
                                padding: EdgeInsets.all(14.h),
                                decoration:
                                    AppDecoration.outlineIndigoF.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
                                ),
                                child: CustomIconButton(
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                  padding: EdgeInsets.all(8.h),
                                  alignment: Alignment.centerRight,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "lbl_continue".tr.toUpperCase(),
                                style: CustomTextStyles.bodyLargePrimary16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 26.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_re_send_code_in".tr,
                              style: CustomTextStyles.bodyMediumff110c26,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl_0_20".tr,
                              style: CustomTextStyles.bodyMediumff5668ff,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 80.v),
                      SizedBox(
                        height: 422.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgEllipse70362x66,
                                height: 362.v,
                                width: 66.h,
                                alignment: Alignment.topRight,
                              ),
                            ),
                            Opacity(
                              opacity: 0.4,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgEllipse711,
                                height: 173.v,
                                width: 82.h,
                                alignment: Alignment.bottomLeft,
                              ),
                            ),
                            _buildKeyboardsLightNumeric(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 22.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftGray90001,
        margin: EdgeInsets.only(
          left: 24.h,
          right: 329.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildKeyboardsLightNumeric() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 6.h,
          top: 65.v,
          right: 6.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 47.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 6.h,
                  crossAxisSpacing: 6.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.verificationModelObj.value
                    .verificationItemList.value.length,
                itemBuilder: (context, index) {
                  VerificationItemModel model = controller.verificationModelObj
                      .value.verificationItemList.value[index];
                  return VerificationItemWidget(
                    model,
                  );
                },
              ),
            ),
            SizedBox(height: 7.v),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 44.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomElevatedButton(
                      height: 46.v,
                      width: 117.h,
                      text: "lbl_0".tr,
                      buttonStyle: CustomButtonStyles.outlineBlueGray,
                      buttonTextStyle:
                          CustomTextStyles.headlineSmallSFProDisplayBlack900,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                      height: 18.v,
                      width: 22.h,
                      margin: EdgeInsets.only(
                        left: 55.h,
                        top: 13.v,
                        bottom: 15.v,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
