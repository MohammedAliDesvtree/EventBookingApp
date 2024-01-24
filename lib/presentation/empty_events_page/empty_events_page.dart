import 'controller/empty_events_controller.dart';
import 'models/empty_events_model.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class EmptyEventsPage extends StatelessWidget {
  EmptyEventsPage({Key? key})
      : super(
          key: key,
        );

  EmptyEventsController controller =
      Get.put(EmptyEventsController(EmptyEventsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 97.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 52.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 202.adaptSize,
                          width: 202.adaptSize,
                          margin: EdgeInsets.only(left: 29.h),
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          decoration: AppDecoration.fillBlue.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder101,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroupBlue50,
                            height: 157.adaptSize,
                            width: 157.adaptSize,
                            alignment: Alignment.bottomRight,
                          ),
                        ),
                      ),
                      SizedBox(height: 32.v),
                      Text(
                        "msg_no_upcoming_event".tr,
                        style: CustomTextStyles.headlineSmallMedium,
                      ),
                      SizedBox(height: 11.v),
                      Container(
                        width: 204.h,
                        margin: EdgeInsets.only(
                          left: 34.h,
                          right: 32.h,
                        ),
                        child: Text(
                          "msg_lorem_ipsum_dolor".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargeGray60016.copyWith(
                            height: 1.56,
                          ),
                        ),
                      ),
                      SizedBox(height: 148.v),
                      SizedBox(
                        height: 58.v,
                        width: 271.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 58.v,
                                width: 271.h,
                                padding: EdgeInsets.all(14.h),
                                decoration:
                                    AppDecoration.outlineIndigoF.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15,
                                ),
                                child: CustomIconButton(
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                  padding: EdgeInsets.all(8.h),
                                  alignment: Alignment.centerRight,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "lbl_explore_events".tr.toUpperCase(),
                                style: CustomTextStyles.bodyLargePrimary16,
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
          ),
        ),
      ),
    );
  }
}
