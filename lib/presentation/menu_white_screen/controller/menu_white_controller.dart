import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/menu_white_screen/models/menu_white_model.dart';

/// A controller class for the MenuWhiteScreen.
///
/// This class manages the state of the MenuWhiteScreen, including the
/// current menuWhiteModelObj
class MenuWhiteController extends GetxController {
  Rx<MenuWhiteModel> menuWhiteModelObj = MenuWhiteModel().obs;
}
