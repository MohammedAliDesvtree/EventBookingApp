import '../controller/search_white_bar_controller.dart';
import '../models/cardlist_item_model.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardlistItemWidget extends StatelessWidget {
  CardlistItemWidget(
    this.cardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardlistItemModel cardlistItemModelObj;

  var controller = Get.find<SearchWhiteBarController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.outlineBluegray60011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.orange200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 92.v,
              width: 79.h,
              decoration: AppDecoration.fillOrange.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: cardlistItemModelObj.image1!.value,
                      height: 92.v,
                      width: 79.h,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 92.v,
                      width: 79.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Obx(
                            () => CustomImageView(
                              imagePath: cardlistItemModelObj.image2!.value,
                              height: 92.v,
                              width: 79.h,
                              radius: BorderRadius.circular(
                                10.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          Obx(
                            () => CustomImageView(
                              imagePath: cardlistItemModelObj.image3!.value,
                              height: 92.v,
                              width: 79.h,
                              radius: BorderRadius.circular(
                                10.h,
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 10.v,
              bottom: 10.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    cardlistItemModelObj.eventTime!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 164.h,
                  child: Obx(
                    () => Text(
                      cardlistItemModelObj.eventDescription!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        height: 1.39,
                      ),
                    ),
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
