import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';

class MyGradient extends StatelessWidget {
  const MyGradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemingController thCont = Get.find<ThemingController>();
    HomeController hCont = Get.find<HomeController>();

    return Obx(() {
      return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: thCont.model.value.myTheme.backgroundGradient,
                begin: Alignment(0, hCont.model.value.grdientFactorY1),
                end: Alignment(0, hCont.model.value.grdientFactorY2))),
      );
    });
  }
}
