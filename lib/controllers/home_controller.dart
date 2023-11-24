import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/models/home_model.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/small_o.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/small_x.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<HomeModel> model = HomeModel().obs;

  void initializeBackground() {
    List<Widget> x = [];
    for (var i = 0; i < 1000; i++) {
      x.add(const SmallX());
      x.add(const SmallO());
    }

    model.update((val) {
      val!.backgroundList = x;
    });
  }

  @override
  void onInit() {
    initializeBackground();
    super.onInit();
  }
}
