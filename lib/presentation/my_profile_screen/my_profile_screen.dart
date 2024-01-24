import '../my_profile_screen/widgets/fiftytwo_item_widget.dart';
import 'controller/my_profile_controller.dart';
import 'models/fiftytwo_item_model.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_title.dart';
import 'package:eventbookingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:eventbookingapp/widgets/custom_elevated_button.dart';
import 'package:eventbookingapp/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:readmore/readmore.dart';

// ignore_for_file: must_be_immutable
class MyProfileScreen extends GetWidget<MyProfileController> {
  const MyProfileScreen({Key? key})
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
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 24.v,
            ),
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
                SizedBox(height: 21.v),
                Text(
                  "lbl_ashfak_sayem".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 13.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: _buildCopy(
                        dynamicText: "lbl_350".tr,
                        dynamicText1: "lbl_following".tr,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 23.h),
                      child: SizedBox(
                        height: 47.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          indent: 8.h,
                          endIndent: 7.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24.h,
                        bottom: 2.v,
                      ),
                      child: _buildCopy(
                        dynamicText: "lbl_346".tr,
                        dynamicText1: "lbl_followers".tr,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 21.v),
                CustomOutlinedButton(
                  width: 154.h,
                  text: "lbl_edit_profile".tr,
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 16.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup33562,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.outlineIndigoA,
                ),
                SizedBox(height: 29.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Opacity(
                    opacity: 0.84,
                    child: Text(
                      "lbl_about_me".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                SizedBox(height: 17.v),
                _buildFive(),
                SizedBox(height: 18.v),
                _buildSixtySix(),
                SizedBox(height: 14.v),
                _buildFiftyTwo(),
                SizedBox(height: 5.v),
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
        imagePath: ImageConstant.imgArrowDownGray90001,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_profile".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFive() {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 100.v,
        width: 319.h,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 319.h,
                child: ReadMoreText(
                  "msg_enjoy_your_favorite".tr,
                  trimLines: 4,
                  colorClickableText: appTheme.indigoA20003,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: "lbl_read_more2".tr,
                  moreStyle: CustomTextStyles.bodyLargeBluegray80002.copyWith(
                    height: 1.56,
                  ),
                  lessStyle: CustomTextStyles.bodyLargeBluegray80002.copyWith(
                    height: 1.56,
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector10,
              height: 2.v,
              width: 5.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(
                right: 130.h,
                bottom: 10.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtySix() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 4.v),
          child: Text(
            "lbl_interest".tr,
            style: CustomTextStyles.titleMediumOnErrorContainer,
          ),
        ),
        CustomElevatedButton(
          height: 28.v,
          width: 90.h,
          text: "lbl_change".tr.toUpperCase(),
          leftIcon: Container(
            margin: EdgeInsets.only(right: 6.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup18439,
              height: 13.adaptSize,
              width: 13.adaptSize,
            ),
          ),
          buttonStyle: CustomButtonStyles.outlineCyanTL14,
          buttonTextStyle: CustomTextStyles.bodySmall10,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFiftyTwo() {
    return Obx(
      () => Wrap(
        runSpacing: 7.v,
        spacing: 7.h,
        children: List<Widget>.generate(
          controller.myProfileModelObj.value.fiftytwoItemList.value.length,
          (index) {
            FiftytwoItemModel model = controller
                .myProfileModelObj.value.fiftytwoItemList.value[index];

            return FiftytwoItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildCopy({
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
