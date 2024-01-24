import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/organizer_profile_about_page/models/organizer_profile_about_model.dart';

/// A controller class for the OrganizerProfileAboutPage.
///
/// This class manages the state of the OrganizerProfileAboutPage, including the
/// current organizerProfileAboutModelObj
class OrganizerProfileAboutController extends GetxController {
  OrganizerProfileAboutController(this.organizerProfileAboutModelObj);

  Rx<OrganizerProfileAboutModel> organizerProfileAboutModelObj;

  Rx<String> radioGroup = "".obs;

  Rx<String> radioGroup1 = "".obs;
}
