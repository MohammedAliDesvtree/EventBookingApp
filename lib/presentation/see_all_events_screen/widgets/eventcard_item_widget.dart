import '../controller/see_all_events_controller.dart';
import '../models/eventcard_item_model.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EventcardItemWidget extends StatelessWidget {
  EventcardItemWidget(
    this.eventcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EventcardItemModel eventcardItemModelObj;

  var controller = Get.find<SeeAllEventsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.outlineBluegray6000f01.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 92.v,
            width: 79.h,
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: eventcardItemModelObj.eventImage!.value,
                height: 92.v,
                width: 79.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    eventcardItemModelObj.eventDateTime!.value,
                    style: CustomTextStyles.bodyMediumIndigoA20003,
                  ),
                ),
                SizedBox(height: 2.v),
                SizedBox(
                  width: 204.h,
                  child: Obx(
                    () => Text(
                      eventcardItemModelObj.eventTitle!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumGray9000115,
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
                Row(
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath:
                            eventcardItemModelObj.eventLocationImage!.value,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(bottom: 3.v),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Obx(
                        () => Text(
                          eventcardItemModelObj.eventLocationText!.value,
                          style: CustomTextStyles.bodyMedium13,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
