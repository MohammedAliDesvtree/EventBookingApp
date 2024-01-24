import 'controller/splash_controller.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  Opacity(
                      opacity: 0.7,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgEllipse69,
                          height: 61.v,
                          width: 188.h,
                          alignment: Alignment.centerRight)),
                  SizedBox(height: 272.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgCheckmark,
                            height: 50.v,
                            width: 47.h,
                            margin: EdgeInsets.only(bottom: 7.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h, top: 3.v),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl_vent".tr,
                                      style: CustomTextStyles
                                          .displayMediumAirbnbCerealAppff5668ff),
                                  TextSpan(
                                      text: "lbl_hub".tr,
                                      style: CustomTextStyles
                                          .displayMediumAirbnbCerealAppff00f8ff)
                                ]),
                                textAlign: TextAlign.left))
                      ]),
                  SizedBox(height: 55.v),
                  _buildWidgetRow()
                ])))));
  }

  /// Section Widget
  Widget _buildWidgetRow() {
    return SizedBox(
        width: double.maxFinite,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                  opacity: 0.5,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse71,
                      height: 225.v,
                      width: 133.h,
                      margin: EdgeInsets.only(top: 153.v))),
              Opacity(
                  opacity: 0.5,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse70,
                      height: 322.v,
                      width: 81.h,
                      margin: EdgeInsets.only(bottom: 56.v)))
            ]));
  }
}
