import 'controller/sign_up_controller.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/core/utils/validation_functions.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:eventbookingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:eventbookingapp/widgets/custom_elevated_button.dart';
import 'package:eventbookingapp/widgets/custom_icon_button.dart';
import 'package:eventbookingapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:eventbookingapp/domain/googleauth/google_auth_helper.dart';
import 'package:eventbookingapp/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                padding: EdgeInsets.only(top: 40.v),
                decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSignUp),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 28.h, vertical: 12.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                      height: 32.v,
                                      width: 83.h,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 3.h),
                                                    child: Row(children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG430,
                                                          height: 1.adaptSize,
                                                          width: 1.adaptSize),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPath534,
                                                          height: 1.adaptSize,
                                                          width: 1.adaptSize)
                                                    ]))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("lbl_sign_up".tr,
                                                    style: theme.textTheme
                                                        .headlineSmall))
                                          ]))),
                              SizedBox(height: 17.v),
                              _buildFullName(),
                              SizedBox(height: 19.v),
                              _buildEmail(),
                              SizedBox(height: 19.v),
                              _buildPassword(),
                              SizedBox(height: 19.v),
                              _buildConfirmPassword(),
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
                                                "lbl_sign_up".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .bodyLargePrimary16))
                                      ])),
                              SizedBox(height: 42.v),
                              Text("lbl_or".tr,
                                  style: CustomTextStyles.titleMediumGray50003),
                              SizedBox(height: 11.v),
                              _buildLoginWithGoogle(),
                              SizedBox(height: 17.v),
                              _buildLoginWithFacebook(),
                              SizedBox(height: 24.v),
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_already_have_an2".tr,
                                        style: CustomTextStyles
                                            .bodyMediumff110c26),
                                    TextSpan(
                                        text: "lbl_signin2".tr,
                                        style:
                                            CustomTextStyles.bodyMediumff5668ff)
                                  ]),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftGray90001,
            margin: EdgeInsets.fromLTRB(24.h, 9.v, 329.h, 9.v)));
  }

  /// Section Widget
  Widget _buildFullName() {
    return CustomTextFormField(
        controller: controller.fullNameController,
        hintText: "lbl_full_name".tr,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(15.h, 17.v, 14.h, 17.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
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
        });
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_your_password".tr,
        textInputType: TextInputType.visiblePassword,
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
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.symmetric(vertical: 18.v)));
  }

  /// Section Widget
  Widget _buildConfirmPassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.confirmPasswordController,
        hintText: "msg_confirm_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(15.h, 17.v, 14.h, 17.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword1.value =
                  !controller.isShowPassword1.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEye,
                    height: 24.adaptSize,
                    width: 24.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 56.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword1.value,
        contentPadding: EdgeInsets.symmetric(vertical: 18.v)));
  }

  /// Section Widget
  Widget _buildLoginWithGoogle() {
    return CustomElevatedButton(
        text: "msg_login_with_google".tr,
        margin: EdgeInsets.symmetric(horizontal: 23.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 20.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 26.adaptSize,
                width: 26.adaptSize)),
        onPressed: () {
          onTapLoginWithGoogle();
        });
  }

  /// Section Widget
  Widget _buildLoginWithFacebook() {
    return CustomElevatedButton(
        text: "msg_login_with_facebook".tr,
        margin: EdgeInsets.symmetric(horizontal: 22.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 20.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 30.adaptSize,
                width: 30.adaptSize)),
        onPressed: () {
          onTapLoginWithFacebook();
        });
  }

  onTapLoginWithGoogle() async {
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

  onTapLoginWithFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
