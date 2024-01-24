import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/search_white_bar_screen/models/search_white_bar_model.dart';

/// A controller class for the SearchWhiteBarScreen.
///
/// This class manages the state of the SearchWhiteBarScreen, including the
/// current searchWhiteBarModelObj
class SearchWhiteBarController extends GetxController {
  Rx<SearchWhiteBarModel> searchWhiteBarModelObj = SearchWhiteBarModel().obs;
}
