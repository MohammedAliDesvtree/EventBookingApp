import '../home_page/widgets/userprofile_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:eventbookingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:eventbookingapp/widgets/custom_elevated_button.dart';
import 'package:eventbookingapp/widgets/custom_radio_button.dart';
import 'package:eventbookingapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              _buildAppBar(),
              SizedBox(height: 27.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: _buildPopular(
                          popularText: "lbl_upcoming_events".tr,
                          allCopyText: "lbl_see_all".tr,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      _buildUserProfile(),
                      SizedBox(height: 29.v),
                      _buildInvite(),
                      SizedBox(height: 30.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: _buildPopular(
                          popularText: "lbl_nearby_you".tr,
                          allCopyText: "lbl_see_all".tr,
                        ),
                      ),
                      SizedBox(height: 13.v),
                      _buildWomenSLeadership(),
                      SizedBox(height: 14.v),
                      _buildInternationalKids(),
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
  Widget _buildAppBar() {
    return SizedBox(
      height: 153.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              decoration: AppDecoration.fillIndigoA40001.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL33,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    height: 36.v,
                    leadingWidth: 48.h,
                    leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgTelevisionPrimary,
                      margin: EdgeInsets.only(
                        left: 24.h,
                        top: 8.v,
                        bottom: 9.v,
                      ),
                    ),
                    centerTitle: true,
                    title: Column(
                      children: [
                        Obx(
                          () => AppbarTitleDropdown(
                            hintText: "msg_current_location".tr,
                            items: controller
                                .homeModelObj.value.dropdownItemList!.value,
                            onTap: (value) {
                              controller.onSelected(value);
                            },
                          ),
                        ),
                        SizedBox(height: 3.v),
                        AppbarSubtitleOne(
                          text: "lbl_new_yourk_usa".tr,
                          margin: EdgeInsets.only(
                            left: 3.h,
                            right: 6.h,
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      AppbarTrailingIconbutton(
                        imagePath: ImageConstant.imgProfilePrimary,
                        margin: EdgeInsets.symmetric(horizontal: 24.h),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSearchPrimary,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 4.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: SizedBox(
                            height: 32.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              color: theme.colorScheme.onSecondaryContainer,
                              indent: 6.h,
                              endIndent: 6.h,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.3,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              top: 2.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "lbl_search".tr,
                              style: CustomTextStyles.titleLargeOnError,
                            ),
                          ),
                        ),
                        Spacer(),
                        CustomElevatedButton(
                          height: 32.v,
                          width: 75.h,
                          text: "lbl_filters".tr,
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 3.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup18240,
                              height: 23.adaptSize,
                              width: 23.adaptSize,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.fillIndigoA,
                          buttonTextStyle: CustomTextStyles.bodySmallPrimary_1,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 45.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 106.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 5.v,
                  ),
                  decoration: AppDecoration.outlineOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder19,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup18217,
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 4.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 7.v,
                          right: 1.h,
                        ),
                        child: Text(
                          "lbl_sports".tr,
                          style: CustomTextStyles.bodyMediumPrimary15,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.h,
                  margin: EdgeInsets.only(left: 11.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineOnPrimary1.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder19,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup18215,
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 3.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          top: 2.v,
                        ),
                        child: Text(
                          "lbl_music".tr,
                          style: CustomTextStyles.bodyMediumPrimary15,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 95.h,
                  margin: EdgeInsets.only(left: 11.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineOnPrimary2.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder19,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup18214,
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 3.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          top: 2.v,
                        ),
                        child: Text(
                          "lbl_food".tr,
                          style: CustomTextStyles.bodyMediumPrimary15,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: CustomTextFormField(
                    width: 14.h,
                    controller: controller.editTextController,
                    textInputAction: TextInputAction.done,
                    borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary,
                    fillColor: appTheme.lightBlueA200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 255.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 24.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount:
                controller.homeModelObj.value.userprofileItemList.value.length,
            itemBuilder: (context, index) {
              UserprofileItemModel model = controller
                  .homeModelObj.value.userprofileItemList.value[index];
              return UserprofileItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInvite() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: appTheme.cyanA400.withOpacity(0.16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 127.v,
        width: 328.h,
        decoration: AppDecoration.fillCyanA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img77mlihf8tw1,
              height: 127.v,
              width: 212.h,
              radius: BorderRadius.circular(
                12.h,
              ),
              alignment: Alignment.centerRight,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  right: 157.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_invite_your_friends".tr,
                      style: CustomTextStyles.titleMediumGray90001,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "msg_get_20_for_ticket".tr,
                      style: CustomTextStyles.bodyMediumPrimaryContainer,
                    ),
                    SizedBox(height: 12.v),
                    CustomElevatedButton(
                      height: 32.v,
                      width: 72.h,
                      text: "lbl_invite".tr.toUpperCase(),
                      buttonStyle: CustomButtonStyles.fillCyanATL5,
                      buttonTextStyle: CustomTextStyles.bodySmallPrimary,
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

  /// Section Widget
  Widget _buildWomenSLeadership() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 92.v,
            width: 79.h,
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage8092x79,
              height: 92.v,
              width: 79.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 4.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_1st_may_sat_2_00".tr.toUpperCase(),
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 142.h,
                  child: Text(
                    "msg_women_s_leadership".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallGray90001,
                  ),
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => CustomRadioButton(
                    text: "msg_radius_gallery2".tr,
                    value: "msg_radius_gallery2".tr,
                    groupValue: controller.radioGroup.value,
                    textStyle: CustomTextStyles.bodyMedium13,
                    onChange: (value) {
                      controller.radioGroup.value = value;
                    },
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBookmarkRed400,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.fromLTRB(10.h, 4.v, 3.h, 72.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInternationalKids() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 92.v,
            width: 79.h,
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage8892x79,
              height: 92.v,
              width: 79.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_1st_may_sat_2_00".tr.toUpperCase(),
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 191.h,
                  child: Text(
                    "msg_international_kids".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallGray90001,
                  ),
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => CustomRadioButton(
                    text: "msg_radius_gallery2".tr,
                    value: "msg_radius_gallery2".tr,
                    groupValue: controller.radioGroup1.value,
                    textStyle: CustomTextStyles.bodyMedium13,
                    onChange: (value) {
                      controller.radioGroup1.value = value;
                    },
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBookmarkSecondarycontainer,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 3.h,
              bottom: 72.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPopular({
    required String popularText,
    required String allCopyText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Opacity(
          opacity: 0.84,
          child: Text(
            popularText,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.gray90001.withOpacity(0.65),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Text(
            allCopyText,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: CustomImageView(
            imagePath: ImageConstant.imgVector1,
            height: 9.v,
            width: 6.h,
            radius: BorderRadius.circular(
              1.h,
            ),
            margin: EdgeInsets.only(
              left: 5.h,
              top: 7.v,
              bottom: 7.v,
            ),
          ),
        ),
      ],
    );
  }
}
