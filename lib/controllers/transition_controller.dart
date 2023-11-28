import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/models/transition_model.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/stick.dart';
import 'package:get/get.dart';

class TransitionController extends GetxController {
  Rx<TransitionModel> model = TransitionModel().obs;
  ThemingController thCon = Get.find<ThemingController>();

  void initializeTransitionList({
    required int sticksNumber,
    required double deviceWidth,
    required double deviceHeight,
  }) {
    List<Stick> x = [];
    double width = deviceWidth / sticksNumber;

    for (var i = 0; i < sticksNumber; i++) {
      //initalize a stick
      Stick s = Stick(
          width: width,
          bodyColor: i % 2 == 0
              ? thCon.model.value.myTheme.bgColor1
              : thCon.model.value.myTheme.bgColor2,
          borderColor: Colors.black,
          stickIndex: i);

      //adding the stick to the list
      x.add(s);
    }

    //updating the model
    model.update((val) {
      val!.sticksList = x;
    });
  }

  void inc() {
    model.update((val) {
      val!.displacement += 10;
    });
  }
}
