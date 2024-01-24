import '../../../core/app_export.dart';

/// This class is used in the [cardlist_item_widget] screen.
class CardlistItemModel {
  CardlistItemModel({
    this.image1,
    this.image2,
    this.image3,
    this.eventTime,
    this.eventDescription,
    this.id,
  }) {
    image1 = image1 ?? Rx(ImageConstant.imgImage81);
    image2 = image2 ?? Rx(ImageConstant.imgImage85);
    image3 = image3 ?? Rx(ImageConstant.imgImage86);
    eventTime = eventTime ?? Rx("1st  May- Sat -2:00 PM\r");
    eventDescription =
        eventDescription ?? Rx("A virtual evening of smooth jazz\r");
    id = id ?? Rx("");
  }

  Rx<String>? image1;

  Rx<String>? image2;

  Rx<String>? image3;

  Rx<String>? eventTime;

  Rx<String>? eventDescription;

  Rx<String>? id;
}
