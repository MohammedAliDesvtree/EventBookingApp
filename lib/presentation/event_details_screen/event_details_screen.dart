import 'controller/event_details_controller.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:eventbookingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:eventbookingapp/widgets/custom_elevated_button.dart';
import 'package:eventbookingapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

// ignore_for_file: must_be_immutable
class EventDetailsScreen extends GetWidget<EventDetailsController> {
  const EventDetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildEventDetailsStack(),
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 292.h,
                        margin: EdgeInsets.only(
                          left: 24.h,
                          right: 58.h,
                        ),
                        child: Text(
                          "msg_international_band2".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.displaySmall,
                        ),
                      ),
                      SizedBox(height: 21.v),
                      Padding(
                        padding: EdgeInsets.only(left: 21.h),
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                              padding: EdgeInsets.all(9.h),
                              decoration: IconButtonStyleHelper.fillIndigoATL12,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgCalendar,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 14.h,
                                top: 2.v,
                              ),
                              child: Column(
                                children: [
                                  Opacity(
                                    opacity: 0.84,
                                    child: Text(
                                      "msg_14_december_2021".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray90001,
                                    ),
                                  ),
                                  SizedBox(height: 6.v),
                                  Text(
                                    "msg_tuesday_4_00pm".tr,
                                    style: CustomTextStyles.bodySmallGray600,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 21.v),
                      Padding(
                        padding: EdgeInsets.only(left: 21.h),
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                              padding: EdgeInsets.all(9.h),
                              decoration: IconButtonStyleHelper.fillIndigoATL12,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgLinkedin,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 14.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Opacity(
                                    opacity: 0.84,
                                    child: Text(
                                      "msg_gala_convention".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray90001,
                                    ),
                                  ),
                                  SizedBox(height: 7.v),
                                  Text(
                                    "msg_36_guild_street".tr,
                                    style: CustomTextStyles.bodySmallGray600,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.v),
                      _buildEventDetailsFollowRow(),
                      SizedBox(height: 25.v),
                      _buildEventDetailsBuyTicketStack(),
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
  Widget _buildEventDetailsStack() {
    return SizedBox(
      height: 207.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 177.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage77,
                    height: 177.v,
                    width: 375.h,
                    alignment: Alignment.center,
                  ),
                  CustomAppBar(
                    height: 50.v,
                    leadingWidth: 46.h,
                    leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowDownPrimary,
                      margin: EdgeInsets.only(
                        left: 24.h,
                        top: 8.v,
                        bottom: 20.v,
                      ),
                    ),
                    title: AppbarSubtitle(
                      text: "lbl_event_details".tr,
                      margin: EdgeInsets.only(left: 13.h),
                    ),
                    actions: [
                      AppbarTrailingIconbuttonOne(
                        imagePath: ImageConstant.imgBookmarkPrimary,
                        margin: EdgeInsets.only(
                          left: 20.h,
                          right: 20.h,
                          bottom: 14.v,
                        ),
                      ),
                    ],
                    styleType: Style
                        .bgGradientnameblack900opacity059nameblack900opacity0,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 40.h,
                top: 147.v,
                right: 40.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                    height: 34.v,
                    width: 79.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      top: 9.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "lbl_20_going".tr,
                      style: CustomTextStyles.bodyMediumIndigoA700,
                    ),
                  ),
                  Spacer(),
                  CustomElevatedButton(
                    height: 28.v,
                    width: 67.h,
                    text: "lbl_invite".tr,
                    margin: EdgeInsets.symmetric(vertical: 3.v),
                    buttonStyle: CustomButtonStyles.outlineCyan,
                    buttonTextStyle: CustomTextStyles.bodySmallPrimary,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEventDetailsFollowRow() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgClose44x44,
              height: 44.adaptSize,
              width: 44.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13.h,
                top: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_ashfak_sayem".tr,
                    style: CustomTextStyles.bodyMediumGray900,
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "lbl_organizer".tr,
                    style: CustomTextStyles.bodySmallBluegray50001,
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomElevatedButton(
              height: 28.v,
              width: 60.h,
              text: "lbl_follow".tr,
              margin: EdgeInsets.symmetric(vertical: 8.v),
              buttonStyle: CustomButtonStyles.outlineCyan,
              buttonTextStyle: theme.textTheme.bodySmall!,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEventDetailsBuyTicketStack() {
    return SizedBox(
      height: 220.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 92.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    theme.colorScheme.primary.withOpacity(0),
                    theme.colorScheme.primary,
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                right: 35.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.84,
                    child: Text(
                      "lbl_about_event".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 17.v),
                  SizedBox(
                    width: 319.h,
                    child: ReadMoreText(
                      "msg_enjoy_your_favorite".tr,
                      trimLines: 4,
                      colorClickableText: appTheme.indigoA20003,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "lbl_read_more".tr,
                      moreStyle: CustomTextStyles.bodyLarge16.copyWith(
                        height: 1.75,
                      ),
                      lessStyle: CustomTextStyles.bodyLarge16.copyWith(
                        height: 1.75,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomElevatedButton(
            height: 181.v,
            width: double.maxFinite,
            text: "lbl_buy_ticket_120".tr.toUpperCase(),
            margin: EdgeInsets.only(bottom: 2.v),
            rightIcon: Container(
              padding: EdgeInsets.fromLTRB(8.h, 8.v, 9.h, 9.v),
              margin: EdgeInsets.only(left: 22.h),
              decoration: BoxDecoration(
                color: appTheme.indigoA400,
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowLeft,
                height: 13.adaptSize,
                width: 13.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToPrimaryDecoration,
            buttonTextStyle: CustomTextStyles.bodyLargePrimary16,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
