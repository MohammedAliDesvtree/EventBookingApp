import '../../../core/app_export.dart';
import 'card1_item_model.dart';

/// This class defines the variables used in the [organizer_profile_event_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OrganizerProfileEventModel {
  Rx<List<Card1ItemModel>> card1ItemList = Rx([
    Card1ItemModel(
        image1: ImageConstant.imgImage81.obs,
        image2: ImageConstant.imgImage85.obs,
        image3: ImageConstant.imgImage86.obs,
        eventTime: "1st  May- Sat -2:00 PM\r".obs,
        eventDescription: "A virtual evening of smooth jazz\r".obs),
    Card1ItemModel(
        eventTime: "1st  May- Sat -2:00 PM\r".obs,
        eventDescription: "Jo malone london’s mother’s day ".obs),
    Card1ItemModel(
        eventTime: "1st  May- Sat -2:00 PM\r".obs,
        eventDescription: "Women's leadership conference".obs),
    Card1ItemModel(
        eventTime: "1st  May- Sat -2:00 PM\r".obs,
        eventDescription: "International kids safe parents night out".obs),
    Card1ItemModel(
        eventTime: "1st  May- Sat -2:00 PM\r".obs,
        eventDescription: "International gala music festival".obs)
  ]);
}
