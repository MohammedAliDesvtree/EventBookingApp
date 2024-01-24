import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/organizer_profile_review_page/models/organizer_profile_review_model.dart';

/// A controller class for the OrganizerProfileReviewPage.
///
/// This class manages the state of the OrganizerProfileReviewPage, including the
/// current organizerProfileReviewModelObj
class OrganizerProfileReviewController extends GetxController {
  OrganizerProfileReviewController(this.organizerProfileReviewModelObj);

  Rx<OrganizerProfileReviewModel> organizerProfileReviewModelObj;

  Rx<String> radioGroup = "".obs;
}
