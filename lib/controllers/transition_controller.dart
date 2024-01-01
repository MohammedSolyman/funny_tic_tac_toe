import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/audio_controller.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/models/transition_model.dart';
import 'package:get/get.dart';

class TransitionController extends GetxController
    with GetTickerProviderStateMixin {
  //this controller is responsible of transition screen between
  //home and game screens.

  Rx<TransitionModel> model = TransitionModel().obs;
  ThemingController thCon = Get.find<ThemingController>();
  DimensionsController dCont = Get.find<DimensionsController>();
  AudioController aCont = Get.find<AudioController>();

  void _initializeTransitionAnimation() {
    //updating device hight
    double deviceHeight = dCont.model.value.height;
    model.update((val) {
      val!.displacementY = deviceHeight * 1.5;
    });

    // controller
    model.value.transitionAnimationController = AnimationController(
        duration: Duration(seconds: model.value.covertingDuration),
        vsync: this);

    //Tween
    Tween<double> tween = Tween<double>(
        begin: model.value.displacementY, end: deviceHeight * (-0.5));

    //animation
    Animation<double> animation =
        tween.animate(model.value.transitionAnimationController);

    //updating values
    model.value.transitionAnimationController.addListener(() {
      model.update((val) {
        val!.displacementY = animation.value;
      });
    });

    //updating status
    model.value.transitionAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        model.value.transitionAnimationController.reverse();
      }
    });
  }

  void fireTransitionAnimation() {
    model.value.transitionAnimationController.forward();
    //4. play page transition audio
    aCont.playAudioPageTransition();
  }

  @override
  void onInit() {
    _initializeTransitionAnimation();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    model.value.transitionAnimationController.dispose();
  }
}
