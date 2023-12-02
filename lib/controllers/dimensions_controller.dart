import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/models/dimensions_model.dart';
import 'package:get/get.dart';

class DimensionsController extends GetxController {
  //this controller is responsible of device dimensions of the whole app.
  Rx<DimensionsModel> model = DimensionsModel().obs;

  void gettingDeviceDimensions(Size size) {
    double width = size.width;
    double height = size.height;
    model.update((val) {
      val!.height = height;
      val.width = width;
    });
  }
}
