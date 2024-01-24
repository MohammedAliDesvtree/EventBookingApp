import '../../../core/app_export.dart';

/// This class is used in the [fiftytwo_item_widget] screen.
class FiftytwoItemModel {
  Rx<String>? gamesOnline = Rx("Games Online");

  Rx<bool>? isSelected = Rx(false);
}
