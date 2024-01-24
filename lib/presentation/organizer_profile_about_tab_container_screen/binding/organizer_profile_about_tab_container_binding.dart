import '../controller/organizer_profile_about_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrganizerProfileAboutTabContainerScreen.
///
/// This class ensures that the OrganizerProfileAboutTabContainerController is created when the
/// OrganizerProfileAboutTabContainerScreen is first loaded.
class OrganizerProfileAboutTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrganizerProfileAboutTabContainerController());
  }
}
