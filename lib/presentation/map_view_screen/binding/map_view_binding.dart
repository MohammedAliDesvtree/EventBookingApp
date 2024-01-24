import '../controller/map_view_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MapViewScreen.
///
/// This class ensures that the MapViewController is created when the
/// MapViewScreen is first loaded.
class MapViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapViewController());
  }
}
