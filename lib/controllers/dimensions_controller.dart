import 'package:funny_tic_tac_toe/models/dimensions_model.dart';
import 'package:get/get.dart';

class DimensionsController extends GetxController {
  //this controller is responsible of device dimensions of the whole app.
  Rx<DimensionsModel> model = DimensionsModel().obs;

  void gettingDeviceDimensions(
      {required double width,
      required double height,
      required double statusBarHeight}) {
    if (width != 0 && height != 0 && statusBarHeight != 0) {
      model.update((val) {
        val!.height = height;
        val.width = width;
        val.statusBarHeight = statusBarHeight;
        print(
            '---from media query  (${val.height} ,${val.width}, ${val.statusBarHeight} )');
      });
    }
  }
}
