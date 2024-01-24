import 'controller/organizer_profile_review_controller.dart';
import 'models/organizer_profile_review_model.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/widgets/custom_radio_button.dart';
import 'package:eventbookingapp/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class OrganizerProfileReviewPage extends StatelessWidget {
  OrganizerProfileReviewPage({Key? key})
      : super(
          key: key,
        );

  OrganizerProfileReviewController controller = Get.put(
      OrganizerProfileReviewController(OrganizerProfileReviewModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgMyProfile,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: _buildClientTestimonials(),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist() {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPlay,
                height: 34.adaptSize,
                width: 34.adaptSize,
                margin: EdgeInsets.only(bottom: 95.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_rocks_velkeinjen".tr,
                                style: CustomTextStyles.bodyLargeBlack900,
                              ),
                            ),
                            SizedBox(height: 1.v),
                            CustomRatingBar(
                              initialRating: 0,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 22.v),
                          child: Text(
                            "lbl_10_feb".tr,
                            style: CustomTextStyles.bodyMediumBluegray200,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.v),
                    Container(
                      width: 264.h,
                      margin: EdgeInsets.only(right: 13.h),
                      child: Text(
                        "msg_cinemas_is_the_ultimate".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900.copyWith(
                          height: 1.67,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPlay,
                height: 34.adaptSize,
                width: 34.adaptSize,
                margin: EdgeInsets.only(bottom: 95.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_angelina_zolly".tr,
                            style: CustomTextStyles.bodyLargeBlack900,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Text(
                              "lbl_10_feb".tr,
                              style: CustomTextStyles.bodyMediumBluegray200,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 1.v),
                    CustomRatingBar(
                      initialRating: 0,
                    ),
                    SizedBox(height: 9.v),
                    Container(
                      width: 264.h,
                      margin: EdgeInsets.only(
                        left: 2.h,
                        right: 13.h,
                      ),
                      child: Text(
                        "msg_cinemas_is_the_ultimate".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumBlack900.copyWith(
                          height: 1.67,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 17.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPlay,
                height: 34.adaptSize,
                width: 34.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  bottom: 11.v,
                ),
                child: Text(
                  "lbl_zenifero_bolex".tr,
                  style: CustomTextStyles.bodyLargeBlack900,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 3.v,
                  bottom: 11.v,
                ),
                child: Text(
                  "lbl_10_feb".tr,
                  style: CustomTextStyles.bodyMediumBluegray200,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 341.v,
                  width: 327.h,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup33523,
                        height: 19.adaptSize,
                        width: 19.adaptSize,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 48.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup33523,
                        height: 19.adaptSize,
                        width: 19.adaptSize,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 68.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup33523,
                        height: 19.adaptSize,
                        width: 19.adaptSize,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 88.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup33523,
                        height: 19.adaptSize,
                        width: 19.adaptSize,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 108.h),
                      ),
                      _buildPlaylist(),
                    ],
                  ),
                ),
                SizedBox(height: 7.v),
                Container(
                  width: 277.h,
                  margin: EdgeInsets.only(left: 50.h),
                  child: Text(
                    "msg_cinemas_is_the_ultimate".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumBlack900.copyWith(
                      height: 1.67,
                    ),
                  ),
                ),
                SizedBox(height: 17.v),
                SizedBox(
                  height: 109.v,
                  width: 324.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.all(8.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 1.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle,
                                height: 92.adaptSize,
                                width: 92.adaptSize,
                                radius: BorderRadius.circular(
                                  10.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(left: 113.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "msg_10_june_9_00_pm".tr,
                                    style:
                                        CustomTextStyles.bodyMediumIndigoA70013,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgLightBulb,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin: EdgeInsets.only(top: 3.v),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4.v),
                              Container(
                                width: 203.h,
                                margin: EdgeInsets.only(right: 8.h),
                                child: Text(
                                  "msg_international_gala2".tr,
                                  maxLines: null,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.titleSmallBlack900,
                                ),
                              ),
                              SizedBox(height: 11.v),
                              Obx(
                                () => Padding(
                                  padding: EdgeInsets.only(right: 28.h),
                                  child: CustomRadioButton(
                                    text: "msg_36_guild_street2".tr,
                                    value: "msg_36_guild_street2".tr,
                                    groupValue: controller.radioGroup.value,
                                    onChange: (value) {
                                      controller.radioGroup.value = value;
                                    },
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
