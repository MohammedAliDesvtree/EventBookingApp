import '../controller/event_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EventDetailsScreen.
///
/// This class ensures that the EventDetailsController is created when the
/// EventDetailsScreen is first loaded.
class EventDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventDetailsController());
  }
}
