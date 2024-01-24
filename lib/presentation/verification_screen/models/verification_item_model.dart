import '../../../core/app_export.dart';

/// This class is used in the [verification_item_widget] screen.
class VerificationItemModel {
  VerificationItemModel({
    this.one,
    this.id,
  }) {
    one = one ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? one;

  Rx<String>? id;
}
