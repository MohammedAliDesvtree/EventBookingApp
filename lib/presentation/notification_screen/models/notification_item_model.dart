import '../../../core/app_export.dart';

/// This class is used in the [notification_item_widget] screen.
class NotificationItemModel {
  NotificationItemModel({
    this.justNowText,
    this.id,
  }) {
    justNowText = justNowText ?? Rx("Just now");
    id = id ?? Rx("");
  }

  Rx<String>? justNowText;

  Rx<String>? id;
}
