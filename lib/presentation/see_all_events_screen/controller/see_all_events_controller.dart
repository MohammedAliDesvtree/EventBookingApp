import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/see_all_events_screen/models/see_all_events_model.dart';

/// A controller class for the SeeAllEventsScreen.
///
/// This class manages the state of the SeeAllEventsScreen, including the
/// current seeAllEventsModelObj
class SeeAllEventsController extends GetxController {
  Rx<SeeAllEventsModel> seeAllEventsModelObj = SeeAllEventsModel().obs;
}
