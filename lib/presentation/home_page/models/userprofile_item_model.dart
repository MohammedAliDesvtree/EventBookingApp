import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.date,
    this.userImage,
    this.eventTitle,
    this.thumbsUpCount,
    this.locationText,
    this.id,
  }) {
    date = date ?? Rx(ImageConstant.imgImage84);
    userImage = userImage ?? Rx(ImageConstant.imgUser);
    eventTitle = eventTitle ?? Rx("International Band Mu...");
    thumbsUpCount = thumbsUpCount ?? Rx("+20 Going");
    locationText = locationText ?? Rx("36 Guild Street London, UK ");
    id = id ?? Rx("");
  }

  Rx<String>? date;

  Rx<String>? userImage;

  Rx<String>? eventTitle;

  Rx<String>? thumbsUpCount;

  Rx<String>? locationText;

  Rx<String>? id;
}
