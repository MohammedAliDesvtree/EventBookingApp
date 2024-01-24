import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/share_bottomsheet/models/share_model.dart';

/// A controller class for the ShareBottomsheet.
///
/// This class manages the state of the ShareBottomsheet, including the
/// current shareModelObj
class ShareController extends GetxController {
  Rx<ShareModel> shareModelObj = ShareModel().obs;
}
