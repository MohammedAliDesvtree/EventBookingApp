import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/filter_bottomsheet/models/filter_model.dart';

/// A controller class for the FilterBottomsheet.
///
/// This class manages the state of the FilterBottomsheet, including the
/// current filterModelObj
class FilterController extends GetxController {
  Rx<FilterModel> filterModelObj = FilterModel().obs;
}
