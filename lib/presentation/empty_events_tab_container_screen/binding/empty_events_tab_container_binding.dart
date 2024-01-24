import '../controller/empty_events_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EmptyEventsTabContainerScreen.
///
/// This class ensures that the EmptyEventsTabContainerController is created when the
/// EmptyEventsTabContainerScreen is first loaded.
class EmptyEventsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmptyEventsTabContainerController());
  }
}
