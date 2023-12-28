import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/models/dimensions_model.dart';
import 'package:get/get.dart';

class DimensionsController extends GetxController {
  //this controller is responsible of device dimensions of the whole app.
  Rx<DimensionsModel> model = DimensionsModel().obs;

  void gettingDeviceDimensions(
      {required double width, required double height}) {
    model.update((val) {
      // val!.height = height;
      // val.width = width;
      val!.height = 853.3333333333334;
      val.width = 480;
    });
  }
}
