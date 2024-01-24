import 'controller/sign_in_controller.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/core/utils/validation_functions.dart';
import 'package:eventbookingapp/widgets/custom_elevated_button.dart';
import 'package:eventbookingapp/widgets/custom_icon_button.dart';
import 'package:eventbookingapp/widgets/custom_switch.dart';
import 'package:eventbookingapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:eventbookingapp/domain/googleauth/google_auth_helper.dart';
import 'package:eventbookingapp/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Column(children: [
                      _buildCheckmarkStack(),
                      SizedBox(height: 17.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 32.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgG430,
                                    height: 1.adaptSize,
                                    width: 1.adaptSize),
                                CustomImageView(
                                    imagePath: ImageConstant.imgPath534,
                                    height: 1.adaptSize,
                                    width: 1.adaptSize)
                              ]))),
                      SizedBox(height: 13.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 29.h),
                              child: Text("lbl_sign_in".tr,
                                  style: theme.textTheme.headlineSmall))),
                      SizedBox(height: 18.v),
                      _buildEmailEditText(),
                      SizedBox(height: 4.v),
                      SizedBox(
                          height: 588.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Opacity(
                                opacity: 0.5,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgEllipse70322x44,
                                    height: 322.v,
                                    width: 44.h,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(bottom: 80.v))),
                            Opacity(
                                opacity: 0.4,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgEllipse71173x82,
                                    height: 173.v,
                                    width: 82.h,
                                    alignment: Alignment.bottomLeft)),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 94.v, right: 30.h),
                                    child: Text("msg_forgot_password".tr,
                                        style: CustomTextStyles
                                            .bodyMediumGray90001))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 28.h, top: 93.v),
                                    child: Row(children: [
                                      Obx(() => CustomSwitch(
                                          value:
                                              controller.isSelectedSwitch.value,
                                          onChange: (value) {
                                            controller.isSelectedSwitch.value =
                                                value;
                                          })),
                                      Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: Text("lbl_remember_me".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumGray90001))
                                    ]))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 50.h, right: 50.h, bottom: 144.v),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text("lbl_or".tr,
                                              style: CustomTextStyles
                                                  .titleMediumGray50003),
                                          SizedBox(height: 11.v),
                                          _buildLoginWithGoogleButton(),
                                          SizedBox(height: 17.v),
                                          _buildLoginWithFacebookButton(),
                                          SizedBox(height: 24.v),
                                          RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "msg_don_t_have_an_account2"
                                                            .tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumff110c26),
                                                TextSpan(
                                                    text: "lbl_sign_up".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumff5668ff)
                                              ]),
                                              textAlign: TextAlign.left)
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: 58.v,
                                    width: 271.h,
                                    margin: EdgeInsets.only(top: 150.v),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 58.v,
                                                  width: 271.h,
                                                  padding: EdgeInsets.all(14.h),
                                                  decoration: AppDecoration
                                                      .outlineIndigoF
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder15),
                                                  child: CustomIconButton(
                                                      height: 30.adaptSize,
                                                      width: 30.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(8.h),
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgArrowLeft)))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                  "lbl_sign_in"
                                                      .tr
                                                      .toUpperCase(),
                                                  style: CustomTextStyles
                                                      .bodyLargePrimary16))
                                        ]))),
                            _buildPasswordEditText(),
                            Opacity(
                                opacity: 0.7,
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgEllipse69209x203,
                                    height: 209.v,
                                    width: 203.h,
                                    alignment: Alignment.topRight))
                          ]))
                    ]))))));
  }

  /// Section Widget
  Widget _buildCheckmarkStack() {
    return SizedBox(
        height: 142.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topRight, children: [
          Opacity(
              opacity: 0.5,
              child: CustomImageView(
                  imagePath: ImageConstant.imgEllipse66,
                  height: 129.v,
                  width: 135.h,
                  alignment: Alignment.topLeft)),
          Opacity(
              opacity: 0.7,
              child: CustomImageView(
                  imagePath: ImageConstant.imgEllipse6990x177,
                  height: 90.v,
                  width: 177.h,
                  alignment: Alignment.topRight)),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 115.h, right: 98.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgCheckmark,
                            height: 58.v,
                            width: 55.h,
                            margin: EdgeInsets.only(left: 44.h)),
                        SizedBox(height: 9.v),
                        Text("lbl_eventhub".tr,
                            style: CustomTextStyles.displaySmallBluegray80003)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildEmailEditText() {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 30.h),
        child: CustomTextFormField(
            controller: controller.emailEditTextController,
            hintText: "lbl_abc_email_com".tr,
            textInputType: TextInputType.emailAddress,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(15.h, 17.v, 14.h, 17.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkGray60003,
                    height: 22.adaptSize,
                    width: 22.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 56.v),
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildLoginWithGoogleButton() {
    return CustomElevatedButton(
        text: "msg_login_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 20.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 26.adaptSize,
                width: 26.adaptSize)),
        onPressed: () {
          onTapLoginWithGoogleButton();
        });
  }

  /// Section Widget
  Widget _buildLoginWithFacebookButton() {
    return CustomElevatedButton(
        text: "msg_login_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 20.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 30.adaptSize,
                width: 30.adaptSize)),
        onPressed: () {
          onTapLoginWithFacebookButton();
        });
  }

  /// Section Widget
  Widget _buildPasswordEditText() {
    return Padding(
        padding: EdgeInsets.only(top: 15.v),
        child: Obx(() => CustomTextFormField(
            width: 317.h,
            controller: controller.passwordEditTextController,
            hintText: "lbl_your_password".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            alignment: Alignment.topCenter,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(15.h, 17.v, 14.h, 17.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgLocation,
                    height: 22.adaptSize,
                    width: 22.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 56.v),
            suffix: InkWell(
                onTap: () {
                  controller.isShowPassword.value =
                      !controller.isShowPassword.value;
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgEye,
                        height: 24.adaptSize,
                        width: 24.adaptSize))),
            suffixConstraints: BoxConstraints(maxHeight: 56.v),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: controller.isShowPassword.value,
            contentPadding: EdgeInsets.symmetric(vertical: 18.v))));
  }

  onTapLoginWithGoogleButton() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapLoginWithFacebookButton() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
