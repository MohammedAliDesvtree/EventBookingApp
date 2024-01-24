import 'controller/empty_events_tab_container_controller.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/empty_events_page/empty_events_page.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_title.dart';
import 'package:eventbookingapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:eventbookingapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EmptyEventsTabContainerScreen
    extends GetWidget<EmptyEventsTabContainerController> {
  const EmptyEventsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 14.v),
            child: Column(
              children: [
                Container(
                  height: 45.v,
                  width: 295.h,
                  decoration: BoxDecoration(
                    color: appTheme.black900.withOpacity(0.03),
                    borderRadius: BorderRadius.circular(
                      22.h,
                    ),
                  ),
                  child: TabBar(
                    controller: controller.tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: appTheme.indigoA20003,
                    labelStyle: TextStyle(
                      fontSize: 15.fSize,
                      fontFamily: 'Airbnb Cereal App',
                      fontWeight: FontWeight.w400,
                    ),
                    unselectedLabelColor: appTheme.gray500,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 15.fSize,
                      fontFamily: 'Airbnb Cereal App',
                      fontWeight: FontWeight.w400,
                    ),
                    indicatorPadding: EdgeInsets.all(
                      5.0.h,
                    ),
                    indicator: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        17.h,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.black900.withOpacity(0.1),
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(
                            0,
                            5,
                          ),
                        ),
                      ],
                    ),
                    tabs: [
                      Tab(
                        child: Text(
                          "lbl_upcoming".tr,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "lbl_past_events".tr,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 667.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      EmptyEventsPage(),
                      EmptyEventsPage(),
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
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(24.h, 9.v, 24.h, 10.v),
        ),
      ],
    );
  }
}
