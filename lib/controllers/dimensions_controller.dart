import 'package:funny_tic_tac_toe/models/dimensions_model.dart';
import 'package:get/get.dart';

class DimensionsController extends GetxController {
  //this controller is responsible of device dimensions
  Rx<DimensionsModel> model = DimensionsModel().obs;

  void gettingDeviceDimensions(
      {required double height, required double width}) {
    model.update((val) {
      val!.height = height;
      val.width = width;
    });
  }
}
