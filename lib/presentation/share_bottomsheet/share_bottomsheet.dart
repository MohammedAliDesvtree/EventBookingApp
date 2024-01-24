import 'controller/share_controller.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:flutter/material.dart';

class ShareBottomsheet extends StatelessWidget {
  ShareBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ShareController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 174.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL38,
      ),
      child: Container(
        height: 2.v,
        width: 26.h,
        decoration: BoxDecoration(
          color: appTheme.gray4007f,
          borderRadius: BorderRadius.circular(
            1.h,
          ),
        ),
      ),
    );
  }
}
