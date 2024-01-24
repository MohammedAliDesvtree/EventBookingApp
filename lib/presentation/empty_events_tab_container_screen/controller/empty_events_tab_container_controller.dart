import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/empty_events_tab_container_screen/models/empty_events_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EmptyEventsTabContainerScreen.
///
/// This class manages the state of the EmptyEventsTabContainerScreen, including the
/// current emptyEventsTabContainerModelObj
class EmptyEventsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<EmptyEventsTabContainerModel> emptyEventsTabContainerModelObj =
      EmptyEventsTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
