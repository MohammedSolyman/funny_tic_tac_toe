import 'package:funny_tic_tac_toe/models/dimensions_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DimensionsController extends GetxController {
  //this controller is responsible of device dimensions of the whole app.
  Rx<DimensionsModel> model = DimensionsModel().obs;

  void gettingDeviceDimensions({
    required double width,
    required double height,
  }) {
    if (width != 0 && height != 0) {
      model.update((val) {
        val!.height = height;
        val.width = width;
        print('---from media query  (${val.height} ,${val.width} )');
      });
    }
  }
}
