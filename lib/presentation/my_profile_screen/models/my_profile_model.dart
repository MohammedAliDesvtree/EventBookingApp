import 'fiftytwo_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [my_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyProfileModel {
  Rx<List<FiftytwoItemModel>> fiftytwoItemList =
      Rx(List.generate(6, (index) => FiftytwoItemModel()));
}
