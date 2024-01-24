import '../controller/see_all_events_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SeeAllEventsScreen.
///
/// This class ensures that the SeeAllEventsController is created when the
/// SeeAllEventsScreen is first loaded.
class SeeAllEventsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeeAllEventsController());
  }
}
