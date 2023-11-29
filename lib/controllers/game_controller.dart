import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/controllers/transition_controller.dart';
import 'package:funny_tic_tac_toe/models/game_model.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/big_o.dart';
import 'package:get/get.dart';

class GameController extends GetxController with GetTickerProviderStateMixin {
  Rx<GameModel> model = GameModel().obs;
  TransitionController tCont = Get.find<TransitionController>();
  DimensionsController dCont = Get.find<DimensionsController>();

//grid animation
  late AnimationController gridAnimationController;

  void _initializeGridDimenions() {
    model.update((val) {
      val!.gridHeight = dCont.model.value.height * 0.33;
      val.gridWidth = dCont.model.value.width * 0.5;
    });
  }

  void _initializeCellsStartPoints() {
    double widthThird = model.value.gridWidth / 3;
    double heightThird = model.value.gridHeight / 3;

    Offset s0 = Offset(0, 0);
    Offset s1 = Offset(widthThird, 0);
    Offset s2 = Offset(widthThird * 2, 0);

    Offset s3 = Offset(0, heightThird);
    Offset s4 = Offset(widthThird, heightThird);
    Offset s5 = Offset(widthThird * 2, heightThird);

    Offset s6 = Offset(0, heightThird * 2);
    Offset s7 = Offset(widthThird, heightThird * 2);
    Offset s8 = Offset(widthThird * 2, heightThird * 2);

    model.update((val) {
      val!.cellsstarPoints = [s0, s1, s2, s3, s4, s5, s6, s7, s8];
    });
  }

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

  void putO(int index) {
    Offset position = model.value.cellsstarPoints[index];
    BigO o = BigO(position);
    model.update((val) {
      val!.xoList.add(o);
    });
  }

  @override
  void onInit() {
    super.onInit();
    tCont.unCoverScreen();
    _initializeGridDimenions();
    _initializeCellsStartPoints();
    _initializeGridAnimation();
    _animateGameGrid();
  }
}
