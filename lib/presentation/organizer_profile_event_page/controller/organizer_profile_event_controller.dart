import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/organizer_profile_event_page/models/organizer_profile_event_model.dart';

/// A controller class for the OrganizerProfileEventPage.
///
/// This class manages the state of the OrganizerProfileEventPage, including the
/// current organizerProfileEventModelObj
class OrganizerProfileEventController extends GetxController {
  OrganizerProfileEventController(this.organizerProfileEventModelObj);

  Rx<OrganizerProfileEventModel> organizerProfileEventModelObj;

  Rx<String> radioGroup = "".obs;

  Rx<String> radioGroup1 = "".obs;
}
