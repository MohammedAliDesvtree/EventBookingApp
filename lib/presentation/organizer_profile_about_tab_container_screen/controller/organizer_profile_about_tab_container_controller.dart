import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/organizer_profile_about_tab_container_screen/models/organizer_profile_about_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the OrganizerProfileAboutTabContainerScreen.
///
/// This class manages the state of the OrganizerProfileAboutTabContainerScreen, including the
/// current organizerProfileAboutTabContainerModelObj
class OrganizerProfileAboutTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<OrganizerProfileAboutTabContainerModel>
      organizerProfileAboutTabContainerModelObj =
      OrganizerProfileAboutTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
