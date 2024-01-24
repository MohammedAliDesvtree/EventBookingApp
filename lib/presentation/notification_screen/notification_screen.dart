import '../notification_screen/widgets/notification_item_widget.dart';
import 'controller/notification_controller.dart';
import 'models/notification_item_model.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_title.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:eventbookingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key})
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
            top: 31.v,
            right: 24.h,
          ),
          child: Obx(
            () => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 17.v,
                );
              },
              itemCount: controller
                  .notificationModelObj.value.notificationItemList.value.length,
              itemBuilder: (context, index) {
                NotificationItemModel model = controller.notificationModelObj
                    .value.notificationItemList.value[index];
                return NotificationItemWidget(
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
