import 'controller/filter_controller.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:flutter/material.dart';

class FilterBottomsheet extends StatelessWidget {
  FilterBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  FilterController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 174.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL38,
      ),
      child: Container(
        height: 5.v,
        width: 26.h,
        decoration: BoxDecoration(
          color: appTheme.gray4007f,
          borderRadius: BorderRadius.circular(
            2.h,
          ),
        ),
      ),
    );
  }
}
