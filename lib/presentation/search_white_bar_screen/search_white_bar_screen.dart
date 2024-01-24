import '../search_white_bar_screen/widgets/cardlist_item_widget.dart';
import 'controller/search_white_bar_controller.dart';
import 'models/cardlist_item_model.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_title.dart';
import 'package:eventbookingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:eventbookingapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchWhiteBarScreen extends GetWidget<SearchWhiteBarController> {
  const SearchWhiteBarScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 17.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 7.v),
              _buildFilters(),
              SizedBox(height: 28.v),
              _buildCardList(),
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
        text: "lbl_search2".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFilters() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSearchIndigoA20003,
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
                indent: 4.h,
                endIndent: 2.h,
              ),
            ),
          ),
          Opacity(
            opacity: 0.3,
            child: Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                top: 1.v,
              ),
              child: Text(
                "lbl_search".tr,
                style: CustomTextStyles.headlineSmallBlack900,
              ),
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            height: 32.v,
            width: 75.h,
            text: "lbl_filters".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 5.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup18240Primary,
                height: 23.adaptSize,
                width: 23.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillIndigoATL16,
            buttonTextStyle: CustomTextStyles.bodySmallDeeppurple50,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardList() {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: controller
              .searchWhiteBarModelObj.value.cardlistItemList.value.length,
          itemBuilder: (context, index) {
            CardlistItemModel model = controller
                .searchWhiteBarModelObj.value.cardlistItemList.value[index];
            return CardlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
