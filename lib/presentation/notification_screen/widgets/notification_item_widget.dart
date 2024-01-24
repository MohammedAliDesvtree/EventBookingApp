import '../controller/notification_controller.dart';
import '../models/notification_item_model.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/widgets/custom_elevated_button.dart';
import 'package:eventbookingapp/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  NotificationItemWidget(
    this.notificationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationItemModel notificationItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPlay,
          height: 45.adaptSize,
          width: 45.adaptSize,
          margin: EdgeInsets.only(bottom: 44.v),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 182.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_david_silbia2".tr,
                      style: CustomTextStyles.bodyMediumff060518,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "msg_invite_jo_malone".tr,
                      style: CustomTextStyles.bodyMediumff3c3e56,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 9.v),
            SizedBox(
              width: 203.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomOutlinedButton(
                      height: 36.v,
                      text: "lbl_reject".tr,
                      margin: EdgeInsets.only(right: 6.h),
                      buttonTextStyle: CustomTextStyles.bodyMediumGray60002,
                    ),
                  ),
                  Expanded(
                    child: CustomElevatedButton(
                      height: 36.v,
                      text: "lbl_accept".tr,
                      margin: EdgeInsets.only(left: 6.h),
                      buttonStyle: CustomButtonStyles.fillIndigoATL6,
                      buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 68.v,
          ),
          child: Obx(
            () => Text(
              notificationItemModelObj.justNowText!.value,
              style: CustomTextStyles.bodySmallBluegray80002,
            ),
          ),
        ),
      ],
    );
  }
}
