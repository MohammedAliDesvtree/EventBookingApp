import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/empty_events_page/models/empty_events_model.dart';

/// A controller class for the EmptyEventsPage.
///
/// This class manages the state of the EmptyEventsPage, including the
/// current emptyEventsModelObj
class EmptyEventsController extends GetxController {
  EmptyEventsController(this.emptyEventsModelObj);

  Rx<EmptyEventsModel> emptyEventsModelObj;
}
