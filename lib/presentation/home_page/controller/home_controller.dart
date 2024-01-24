import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomePage.
///
/// This class manages the state of the HomePage, including the
/// current homeModelObj
class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  TextEditingController editTextController = TextEditingController();

  Rx<HomeModel> homeModelObj;

  Rx<String> radioGroup = "".obs;

  Rx<String> radioGroup1 = "".obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in homeModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    homeModelObj.value.dropdownItemList.refresh();
  }
}
