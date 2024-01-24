import '../../../core/app_export.dart';
import 'notification_item_model.dart';

/// This class defines the variables used in the [notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel {
  Rx<List<NotificationItemModel>> notificationItemList = Rx([
    NotificationItemModel(justNowText: "Just now".obs),
    NotificationItemModel(justNowText: "20 min ago".obs)
  ]);
}
