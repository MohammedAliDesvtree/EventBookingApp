import '../controller/verification_controller.dart';
import '../models/verification_item_model.dart';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VerificationItemWidget extends StatelessWidget {
  VerificationItemWidget(
    this.verificationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VerificationItemModel verificationItemModelObj;

  var controller = Get.find<VerificationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 117.h,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Obx(
        () => Text(
          verificationItemModelObj.one!.value,
          style: CustomTextStyles.headlineSmallSFProDisplayBlack900,
        ),
      ),
    );
  }
}
