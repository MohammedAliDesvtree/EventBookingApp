import '../../../core/app_export.dart';

/// This class is used in the [eventcard_item_widget] screen.
class EventcardItemModel {
  EventcardItemModel({
    this.eventImage,
    this.eventDateTime,
    this.eventTitle,
    this.eventLocationImage,
    this.eventLocationText,
    this.id,
  }) {
    eventImage = eventImage ?? Rx(ImageConstant.imgImage8492x79);
    eventDateTime = eventDateTime ?? Rx("Wed, Apr 28 •\r5:30 PM\r");
    eventTitle = eventTitle ?? Rx("Jo Malone London’s Mother’s Day Presents");
    eventLocationImage =
        eventLocationImage ?? Rx(ImageConstant.imgGroup6BlueGray20001);
    eventLocationText =
        eventLocationText ?? Rx("Radius Gallery • Santa Cruz, CA\r");
    id = id ?? Rx("");
  }

  Rx<String>? eventImage;

  Rx<String>? eventDateTime;

  Rx<String>? eventTitle;

  Rx<String>? eventLocationImage;

  Rx<String>? eventLocationText;

  Rx<String>? id;
}
