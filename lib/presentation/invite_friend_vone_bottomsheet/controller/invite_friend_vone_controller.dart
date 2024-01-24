import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/invite_friend_vone_bottomsheet/models/invite_friend_vone_model.dart';

/// A controller class for the InviteFriendVoneBottomsheet.
///
/// This class manages the state of the InviteFriendVoneBottomsheet, including the
/// current inviteFriendVoneModelObj
class InviteFriendVoneController extends GetxController {
  Rx<InviteFriendVoneModel> inviteFriendVoneModelObj =
      InviteFriendVoneModel().obs;
}
