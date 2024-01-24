import 'controller/organizer_profile_about_tab_container_controller.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/organizer_profile_about_page/organizer_profile_about_page.dart';
import 'package:eventbookingapp/presentation/organizer_profile_event_page/organizer_profile_event_page.dart';
import 'package:eventbookingapp/presentation/organizer_profile_review_page/organizer_profile_review_page.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:eventbookingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:eventbookingapp/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class OrganizerProfileAboutTabContainerScreen
    extends GetWidget<OrganizerProfileAboutTabContainerController> {
  const OrganizerProfileAboutTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(top: 40.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgMyProfile,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 25.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage89,
                  height: 96.adaptSize,
                  width: 96.adaptSize,
                  radius: BorderRadius.circular(
                    48.h,
                  ),
                ),
                SizedBox(height: 19.v),
                Text(
                  "lbl_david_silbia".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 15.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: _buildUserProfile(
                        dynamicText: "lbl_350".tr,
                        dynamicText1: "lbl_following".tr,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 23.h),
                      child: SizedBox(
                        height: 46.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          indent: 8.h,
                          endIndent: 6.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: _buildUserProfile(
                        dynamicText: "lbl_346".tr,
                        dynamicText1: "lbl_followers".tr,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 22.v),
                _buildRecentOrders(),
                SizedBox(height: 29.v),
                _buildTabview(),
                _buildOrganizerProfile(),
              ],
            ),
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
        imagePath: ImageConstant.imgBack,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMore,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 9.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRecentOrders() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomOutlinedButton(
            width: 154.h,
            text: "lbl_follow".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgUserPrimary,
                height: 22.adaptSize,
                width: 22.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.outlineIndigoATL10,
            buttonTextStyle: CustomTextStyles.bodyLargePrimary,
          ),
          CustomOutlinedButton(
            width: 154.h,
            text: "lbl_massages".tr,
            margin: EdgeInsets.only(left: 17.h),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup18535,
                height: 22.adaptSize,
                width: 22.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.outlineIndigoA,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 34.v,
      width: 325.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.indigoA20003,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Airbnb Cereal App',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.gray600,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Airbnb Cereal App',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: appTheme.indigoA20003,
        tabs: [
          Tab(
            child: Text(
              "lbl_about".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_event".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_reviews".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrganizerProfile() {
    return SizedBox(
      height: 357.v,
      child: TabBarView(
        controller: controller.tabviewController,
        children: [
          OrganizerProfileAboutPage(),
          OrganizerProfileEventPage(),
          OrganizerProfileReviewPage(),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildUserProfile({
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Column(
      children: [
        Text(
          dynamicText,
          style: CustomTextStyles.titleMediumGray9000116.copyWith(
            color: appTheme.gray90001,
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          dynamicText1,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }
}
