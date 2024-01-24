import '../controller/menu_white_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MenuWhiteScreen.
///
/// This class ensures that the MenuWhiteController is created when the
/// MenuWhiteScreen is first loaded.
class MenuWhiteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuWhiteController());
  }
}
