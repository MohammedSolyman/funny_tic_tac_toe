import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/models/transition_model.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/components/stick.dart';
import 'package:get/get.dart';

class TransitionController extends GetxController
    with GetTickerProviderStateMixin {
  //this controller is responsible of transition screen between
  //home and game screens.

  Rx<TransitionModel> model = TransitionModel().obs;
  ThemingController thCon = Get.find<ThemingController>();
  DimensionsController dCont = Get.find<DimensionsController>();

  void _initializeTransitionList({required int sticksNumber}) {
    double deviceWidth = dCont.model.value.width;

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

  void animateTransitionBlock() {
    _initializeTransitionList(sticksNumber: 10);
    model.value.transitionAnimationController.forward();
  }

  @override
  void onInit() {
    super.onInit();
    _initializeTransitionAnimation();
  }

  @override
  void onClose() {
    super.onClose();
    model.value.transitionAnimationController.dispose();
  }
}
