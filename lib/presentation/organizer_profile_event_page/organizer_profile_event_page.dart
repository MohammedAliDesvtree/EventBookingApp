import '../organizer_profile_event_page/widgets/card1_item_widget.dart';
import 'controller/organizer_profile_event_controller.dart';
import 'models/card1_item_model.dart';
import 'models/organizer_profile_event_model.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class OrganizerProfileEventPage extends StatelessWidget {
  OrganizerProfileEventPage({Key? key})
      : super(
          key: key,
        );

  OrganizerProfileEventController controller = Get.put(
      OrganizerProfileEventController(OrganizerProfileEventModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgMyProfile,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: _buildScrollView(),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.v),
          Container(
            height: 624.v,
            width: 330.h,
            margin: EdgeInsets.only(
              left: 21.h,
              right: 24.h,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 109.v,
                    width: 324.h,
                    margin: EdgeInsets.only(bottom: 186.v),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.all(7.h),
                            decoration: AppDecoration.outlineGray20001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 1.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle,
                                  height: 92.adaptSize,
                                  width: 92.adaptSize,
                                  radius: BorderRadius.circular(
                                    10.h,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(left: 113.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildTimeRow(
                                  timeText: "msg_10_june_9_00_pm".tr,
                                ),
                                SizedBox(height: 4.v),
                                Container(
                                  width: 203.h,
                                  margin: EdgeInsets.only(right: 8.h),
                                  child: Text(
                                    "msg_international_gala2".tr,
                                    maxLines: null,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.titleSmallBlack900,
                                  ),
                                ),
                                SizedBox(height: 11.v),
                                Obx(
                                  () => Padding(
                                    padding: EdgeInsets.only(right: 28.h),
                                    child: CustomRadioButton(
                                      text: "msg_36_guild_street2".tr,
                                      value: "msg_36_guild_street2".tr,
                                      groupValue: controller.radioGroup.value,
                                      onChange: (value) {
                                        controller.radioGroup.value = value;
                                      },
                                    ),
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 109.v,
                    width: 324.h,
                    margin: EdgeInsets.only(bottom: 65.v),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.all(8.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 1.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle,
                                  height: 92.adaptSize,
                                  width: 92.adaptSize,
                                  radius: BorderRadius.circular(
                                    10.h,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(left: 113.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildTimeRow(
                                  timeText: "msg_10_june_9_00_pm".tr,
                                ),
                                SizedBox(height: 4.v),
                                Container(
                                  width: 203.h,
                                  margin: EdgeInsets.only(right: 8.h),
                                  child: Text(
                                    "msg_international_gala2".tr,
                                    maxLines: null,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.titleSmallBlack900,
                                  ),
                                ),
                                SizedBox(height: 11.v),
                                Obx(
                                  () => Padding(
                                    padding: EdgeInsets.only(right: 28.h),
                                    child: CustomRadioButton(
                                      text: "msg_36_guild_street2".tr,
                                      value: "msg_36_guild_street2".tr,
                                      groupValue: controller.radioGroup1.value,
                                      onChange: (value) {
                                        controller.radioGroup1.value = value;
                                      },
                                    ),
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
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(right: 3.h),
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
                        itemCount: controller.organizerProfileEventModelObj
                            .value.card1ItemList.value.length,
                        itemBuilder: (context, index) {
                          Card1ItemModel model = controller
                              .organizerProfileEventModelObj
                              .value
                              .card1ItemList
                              .value[index];
                          return Card1ItemWidget(
                            model,
                          );
                        },
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

  /// Common widget
  Widget _buildTimeRow({required String timeText}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          timeText,
          style: CustomTextStyles.labelLargeIndigoA700_1.copyWith(
            color: appTheme.indigoA700,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgLightBulb,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(top: 3.v),
        ),
      ],
    );
  }
}
