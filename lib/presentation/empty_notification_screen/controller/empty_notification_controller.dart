import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/empty_notification_screen/models/empty_notification_model.dart';

/// A controller class for the EmptyNotificationScreen.
///
/// This class manages the state of the EmptyNotificationScreen, including the
/// current emptyNotificationModelObj
class EmptyNotificationController extends GetxController {
  Rx<EmptyNotificationModel> emptyNotificationModelObj =
      EmptyNotificationModel().obs;
}
