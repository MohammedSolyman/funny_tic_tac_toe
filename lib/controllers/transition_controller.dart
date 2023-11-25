import 'dart:math';

import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/models/transition_model.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/stick.dart';
import 'package:get/get.dart';

class TransitionController extends GetxController {
  Rx<TransitionModel> model = TransitionModel().obs;

  void initializeTransitionList({
    required int sticksNumber,
    required double deviceWidth,
    required double deviceHeight,
  }) {
    List<Stick> x = [];
    double width = deviceWidth / sticksNumber;
    Offset p0 = const Offset(0, 0);

    for (var i = 0; i < 10; i++) {
      // random doby color
      int r = Random().nextInt(255);
      int g = Random().nextInt(255);
      int b = Random().nextInt(255);
      Color bodyColor = Color.fromARGB(255, r, g, b);

      //initalize a stick
      Stick s = Stick(
          width: width,
          bodyColor: bodyColor,
          borderColor: Colors.black,
          p0: p0);

      //adding the stick to the list
      x.add(s);

      //updating the starting point
      p0 = p0 + Offset(width, 0);
    }

    //updating the model
    model.update((val) {
      val!.sticksList = x;
    });
  }
}
