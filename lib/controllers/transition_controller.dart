import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/models/transition_model.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/stick.dart';
import 'package:get/get.dart';

class TransitionController extends GetxController
    with GetTickerProviderStateMixin {
  Rx<TransitionModel> model = TransitionModel().obs;
  ThemingController thCon = Get.find<ThemingController>();

  //transition animation
  late AnimationController transitionAnimationController;
  late Animation<double> animation;

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

  void initializeTransitionAnimation(double deviceHeight) {
    //updating device hight
    model.update((val) {
      val!.displacementY = deviceHeight * 1.5;
    });

    // controller
    transitionAnimationController =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);

    //Tween
    Tween<double> tween = Tween<double>(
        begin: model.value.displacementY, end: deviceHeight * (-0.5));

    //animation
    animation = tween.animate(transitionAnimationController);

    //updating values
    transitionAnimationController.addListener(() {
      model.update((val) {
        val!.displacementY = animation.value;
      });
    });
  }

  void coverScreen() {
    transitionAnimationController.forward();
  }

  @override
  void onClose() {
    super.onClose();

    transitionAnimationController.dispose();
  }
}
