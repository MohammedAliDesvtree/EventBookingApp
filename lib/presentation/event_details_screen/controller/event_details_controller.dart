import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/event_details_screen/models/event_details_model.dart';

/// A controller class for the EventDetailsScreen.
///
/// This class manages the state of the EventDetailsScreen, including the
/// current eventDetailsModelObj
class EventDetailsController extends GetxController {
  Rx<EventDetailsModel> eventDetailsModelObj = EventDetailsModel().obs;
}
