import 'package:funny_tic_tac_toe/models/dimensions_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DimensionsController extends GetxController {
  //this controller is responsible of device dimensions of the whole app.
  Rx<DimensionsModel> model = DimensionsModel().obs;

  void gettingDeviceDimensions(
      {required double width,
      required double height,
      required double statusBarHeight}) {
    if (width != 0 && height != 0 && statusBarHeight != 0) {
      // update the values
      model.update((val) {
        val!.height = height;
        val.width = width;
        val.statusBarHeight = statusBarHeight;
        print(
            '---from media query  (${val.height} ,${val.width}, ${val.statusBarHeight} )');
      });
    }

    // GetStorage box = GetStorage();

    // //1. if the dimensions are already stored
    // if (box.read<double>('width') != null &&
    //     box.read<double>('height') != null &&
    //     box.read<double>('statusBarHeight') != null) {
    //   model.update((val) {
    //     // 1.1 update the values
    //     val!.height = box.read<double>('height')!;
    //     val.width = box.read<double>('width')!;
    //     val.statusBarHeight = box.read<double>('statusBarHeight')!;
    //     print(
    //         '---from storage  (${val.height} ,${val.width}, ${val.statusBarHeight} )');
    //   });
    // }

    // //2. if the dimensions are NOT stored (first time)
    // else {
    //   if (width != 0 && height != 0 && statusBarHeight != 0) {
    //     // 2.1 update the values
    //     model.update((val) {
    //       val!.height = height;
    //       val.width = width;
    //       val.statusBarHeight = statusBarHeight;
    //       print(
    //           '---from media query  (${val.height} ,${val.width}, ${val.statusBarHeight} )');
    //     });

    //     // 2.2 store values locally
    //     box.write('width', width);
    //     box.write('height', height);
    //     box.write('statusBarHeight', statusBarHeight);
    //   }
    // }
  }
}
