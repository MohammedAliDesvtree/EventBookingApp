import '../models/fiftytwo_item_model.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FiftytwoItemWidget extends StatelessWidget {
  FiftytwoItemWidget(
    this.fiftytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiftytwoItemModel fiftytwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 7.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          fiftytwoItemModelObj.gamesOnline!.value,
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontSize: 13.fSize,
            fontFamily: 'Airbnb Cereal App',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (fiftytwoItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.deepPurpleA200,
        selectedColor: appTheme.lightBlueA20001,
        shape: (fiftytwoItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              ),
        onSelected: (value) {
          fiftytwoItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
