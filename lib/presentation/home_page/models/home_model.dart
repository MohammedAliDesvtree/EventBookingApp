import 'package:eventbookingapp/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        date: ImageConstant.imgImage84.obs,
        userImage: ImageConstant.imgUser.obs,
        eventTitle: "International Band Mu...".obs,
        thumbsUpCount: "+20 Going".obs,
        locationText: "36 Guild Street London, UK ".obs),
    UserprofileItemModel(
        date: ImageConstant.imgImage84131x218.obs,
        eventTitle: "Jo Malone London’s Mo..".obs,
        thumbsUpCount: "+20 Going".obs,
        locationText: "Radius Gallery • Santa Cruz, CA\r".obs)
  ]);
}
