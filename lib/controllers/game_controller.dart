import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/transition_controller.dart';
import 'package:funny_tic_tac_toe/models/game_model.dart';
import 'package:get/get.dart';

class GameController extends GetxController with GetTickerProviderStateMixin {
  Rx<GameModel> model = GameModel().obs;
  TransitionController tCont = Get.find<TransitionController>();

//grid animation
  late AnimationController gridAnimationController;

  void _initializeGridAnimation() {
    // controler
    gridAnimationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    //curve
    CurvedAnimation curvedAnimation = CurvedAnimation(
        parent: gridAnimationController, curve: Curves.elasticOut);

    // tween
    Tween<Alignment> tween = Tween<Alignment>(
        begin: model.value.gridAlignment, end: const Alignment(0, 0));

    //animation
    Animation animation = tween.animate(curvedAnimation);

    //updating values
    gridAnimationController.addListener(() {
      model.update((val) {
        val!.gridAlignment = animation.value;
      });
    });
  }

  Future<void> _animateGameGrid() async {
    await Future.delayed(const Duration(seconds: 3));
    gridAnimationController.forward();
  }

  @override
  void onInit() {
    super.onInit();
    tCont.unCoverScreen();
    _initializeGridAnimation();
    _animateGameGrid();
  }
}
