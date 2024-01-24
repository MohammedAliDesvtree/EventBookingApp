import 'package:eventbookingapp/core/app_export.dart';
import 'package:eventbookingapp/presentation/map_view_screen/models/map_view_model.dart';

/// A controller class for the MapViewScreen.
///
/// This class manages the state of the MapViewScreen, including the
/// current mapViewModelObj
class MapViewController extends GetxController {
  Rx<MapViewModel> mapViewModelObj = MapViewModel().obs;
}
