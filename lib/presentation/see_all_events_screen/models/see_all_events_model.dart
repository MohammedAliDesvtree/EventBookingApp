import '../../../core/app_export.dart';
import 'eventcard_item_model.dart';

/// This class defines the variables used in the [see_all_events_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeeAllEventsModel {
  Rx<List<EventcardItemModel>> eventcardItemList = Rx([
    EventcardItemModel(
        eventImage: ImageConstant.imgImage8492x79.obs,
        eventDateTime: "Wed, Apr 28 •\r5:30 PM\r".obs,
        eventTitle: "Jo Malone London’s Mother’s Day Presents".obs,
        eventLocationImage: ImageConstant.imgGroup6BlueGray20001.obs,
        eventLocationText: "Radius Gallery • Santa Cruz, CA\r".obs),
    EventcardItemModel(
        eventImage: ImageConstant.imgImage8092x79.obs,
        eventDateTime: "Sat, Apr 24 •\r1:30 PM\r".obs,
        eventTitle: "Women's Leadership Conference 2021".obs,
        eventLocationImage: ImageConstant.imgGroup6BlueGray20002.obs,
        eventLocationText: "53 Bush St • San Francisco, CA\r".obs),
    EventcardItemModel(
        eventImage: ImageConstant.imgImage8892x79.obs,
        eventDateTime: "Fri, Apr 23 •\r6:00 PM\r".obs,
        eventTitle: "International Kids Safe Parents Night Out".obs,
        eventLocationImage: ImageConstant.imgGroup6BlueGray20002.obs,
        eventLocationText: "Lot 13 • Oakland, CA\r".obs),
    EventcardItemModel(
        eventImage: ImageConstant.imgImage8792x79.obs,
        eventDateTime: "Mon, Jun 21 •\r10:00 PM\r".obs,
        eventTitle: "Collectivity Plays the Music of Jimi ".obs,
        eventLocationImage: ImageConstant.imgGroup6BlueGray20002.obs,
        eventLocationText: "Longboard Margarita Bar ".obs),
    EventcardItemModel(
        eventImage: ImageConstant.imgGroup.obs,
        eventDateTime: "Sun, Apr 25 •\r10:15 AM\r".obs,
        eventTitle: "International Gala Music Festival".obs,
        eventLocationImage: ImageConstant.imgGroup6BlueGray20003.obs,
        eventLocationText: "36 Guild Street London, UK  ".obs),
    EventcardItemModel(
        eventDateTime: "Sat, May 1 •\r2:00 PM\r".obs,
        eventTitle: "A Virtual Evening of Smooth Jazz\r".obs,
        eventLocationImage: ImageConstant.imgGroup6BlueGray20002.obs,
        eventLocationText: "Lot 13 • Oakland, CA\r".obs)
  ]);
}
