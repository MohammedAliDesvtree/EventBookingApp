import '../controller/home_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 237.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(9.h),
          decoration: AppDecoration.outlineBlueGrayF.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder19,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: 131.v,
                  width: 218.h,
                  decoration: AppDecoration.fillOrange.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroup42,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: userprofileItemModelObj.date!.value,
                          height: 131.v,
                          width: 218.h,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(8.h, 8.v, 8.h, 75.v),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 47.v,
                                width: 45.h,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        height: 45.adaptSize,
                                        width: 45.adaptSize,
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary
                                              .withOpacity(0.7),
                                          borderRadius: BorderRadius.circular(
                                            10.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        width: 26.h,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_10".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .titleMediumffef635a,
                                              ),
                                              TextSpan(
                                                text:
                                                    "lbl_june".tr.toUpperCase(),
                                                style: CustomTextStyles
                                                    .bodySmallffef635a,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 17.v),
                                child: Obx(
                                  () => CustomIconButton(
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                    padding: EdgeInsets.all(7.h),
                                    decoration:
                                        IconButtonStyleHelper.fillPrimary,
                                    child: CustomImageView(
                                      imagePath: userprofileItemModelObj
                                          .userImage!.value,
                                    ),
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
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Obx(
                  () => Text(
                    userprofileItemModelObj.eventTitle!.value,
                    style: CustomTextStyles.bodyLargeBlack900,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                      height: 24.v,
                      width: 56.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 5.v,
                        bottom: 2.v,
                      ),
                      child: Obx(
                        () => Text(
                          userprofileItemModelObj.thumbsUpCount!.value,
                          style: CustomTextStyles.labelLargeIndigoA700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup6,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Obx(
                          () => Text(
                            userprofileItemModelObj.locationText!.value,
                            style: CustomTextStyles.bodyMediumBluegray900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 7.v),
            ],
          ),
        ),
      ),
    );
  }
}
