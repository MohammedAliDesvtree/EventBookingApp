import 'controller/onboarding_three_controller.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _buildOnboardingThreeSixDirectional(),
              CustomImageView(
                imagePath: ImageConstant.imgGroup33331,
                height: 475.v,
                width: 375.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 19.v),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOnboardingThreeSixDirectional() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.all(40.h),
        decoration: AppDecoration.fillIndigoA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL48,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 274.h,
              margin: EdgeInsets.only(
                left: 15.h,
                right: 5.h,
              ),
              child: Text(
                "msg_to_look_up_more".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge!.copyWith(
                  height: 1.55,
                ),
              ),
            ),
            SizedBox(height: 16.v),
            Opacity(
              opacity: 0.8,
              child: Container(
                width: 284.h,
                margin: EdgeInsets.only(
                  left: 7.h,
                  right: 3.h,
                ),
                child: Text(
                  "msg_in_publishing_and".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumPrimary15_1.copyWith(
                    height: 1.67,
                  ),
                ),
              ),
            ),
            SizedBox(height: 44.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "lbl_skip".tr,
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
                Spacer(
                  flex: 51,
                ),
                Container(
                  height: 8.v,
                  margin: EdgeInsets.only(
                    top: 8.v,
                    bottom: 9.v,
                  ),
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      spacing: 8,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: theme.colorScheme.primary.withOpacity(0.42),
                      dotHeight: 8.v,
                      dotWidth: 8.h,
                    ),
                  ),
                ),
                Spacer(
                  flex: 48,
                ),
                Text(
                  "lbl_next".tr,
                  style: CustomTextStyles.titleMediumPrimary_1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
