import '../controller/search_white_bar_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchWhiteBarScreen.
///
/// This class ensures that the SearchWhiteBarController is created when the
/// SearchWhiteBarScreen is first loaded.
class SearchWhiteBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchWhiteBarController());
  }
}
