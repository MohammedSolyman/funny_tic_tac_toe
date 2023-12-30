import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/models/dimensions_model.dart';
import 'package:get/get.dart';

class DimensionsController extends GetxController {
  //this controller is responsible of device dimensions of the whole app.
  Rx<DimensionsModel> model = DimensionsModel().obs;

  void gettingDeviceDimensions(
      {required double width, required double height}) {
    // final view = WidgetsBinding.instance.platformDispatcher.views.first;
    // final size = view.physicalSize;
    // final pixelRatio = view.devicePixelRatio;

// //   Size in physical pixels:
//     final width = size.width;
//     final height = size.height;

// Size in logical pixels:
    // final width = size.width / pixelRatio;
    // final height = size.height / pixelRatio;

    model.update((val) {
      val!.height = height;
      val.width = width;
      print('------ height');
      print('--- ${val.height}');
      print('--- width');
      print('------ ${val.width}');
    });
  }

  // @override
  // void onInit() {
  //   _gettingDeviceDimensions();
  //   super.onInit();
  // }
}
