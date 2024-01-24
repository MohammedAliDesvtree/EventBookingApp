import '../../../core/app_export.dart';
import 'verification_item_model.dart';

/// This class defines the variables used in the [verification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VerificationModel {
  Rx<List<VerificationItemModel>> verificationItemList =
      Rx([VerificationItemModel(one: "1".obs)]);
}
