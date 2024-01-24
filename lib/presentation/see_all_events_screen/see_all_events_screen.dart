import '../see_all_events_screen/widgets/eventcard_item_widget.dart';
import 'controller/see_all_events_controller.dart';
import 'models/eventcard_item_model.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_title.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:eventbookingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SeeAllEventsScreen extends GetWidget<SeeAllEventsController> {
  const SeeAllEventsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            top: 18.v,
            right: 24.h,
          ),
          child: Obx(
            () => ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 12.v,
                );
              },
              itemCount: controller
                  .seeAllEventsModelObj.value.eventcardItemList.value.length,
              itemBuilder: (context, index) {
                EventcardItemModel model = controller
                    .seeAllEventsModelObj.value.eventcardItemList.value[index];
                return EventcardItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 41.v,
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownGray90001,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 10.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_events".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearchGray90001,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 9.v,
            right: 8.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(16.h, 9.v, 32.h, 2.v),
        ),
      ],
    );
  }
}
