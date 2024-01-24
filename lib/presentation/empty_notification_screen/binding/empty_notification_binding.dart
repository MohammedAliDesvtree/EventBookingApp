import '../controller/empty_notification_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EmptyNotificationScreen.
///
/// This class ensures that the EmptyNotificationController is created when the
/// EmptyNotificationScreen is first loaded.
class EmptyNotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmptyNotificationController());
  }
}
