import 'controller/empty_notification_controller.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_title.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:eventbookingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class EmptyNotificationScreen extends GetWidget<EmptyNotificationController> {
  const EmptyNotificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 37.h,
            top: 164.v,
            right: 37.h,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 169.v,
                  width: 155.h,
                  margin: EdgeInsets.only(left: 65.h),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 168.v,
                          width: 136.h,
                          margin: EdgeInsets.only(right: 3.h),
                          padding: EdgeInsets.only(
                            left: 45.h,
                            top: 68.v,
                            right: 45.h,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgGroup3,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgSettings,
                            height: 26.v,
                            width: 46.h,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 35.adaptSize,
                          margin: EdgeInsets.only(bottom: 10.v),
                          padding: EdgeInsets.symmetric(
                            horizontal: 11.h,
                            vertical: 6.v,
                          ),
                          decoration: AppDecoration.outlineIndigoA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Text(
                            "lbl_0".tr,
                            style:
                                CustomTextStyles.titleMediumSFProDisplayPrimary,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgMobile,
                          height: 26.v,
                          width: 16.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 12.v,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.1,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgMobile,
                          height: 33.v,
                          width: 21.h,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 44.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_no_notifications2".tr,
                      style: CustomTextStyles.bodyLargeff334a66,
                    ),
                    TextSpan(
                      text: "lbl".tr,
                      style: CustomTextStyles.bodyLargeff334a66,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 16.v),
              Opacity(
                opacity: 0.7,
                child: SizedBox(
                  width: 297.h,
                  child: Text(
                    "msg_lorem_ipsum_dolor2".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyLargeBluegray8000116.copyWith(
                      height: 1.75,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownGray90001,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_notification".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 9.v,
          ),
        ),
      ],
    );
  }
}
