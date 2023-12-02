import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/models/game_model.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/big_o.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/big_x.dart';
import 'package:get/get.dart';

class GameController extends GetxController with GetTickerProviderStateMixin {
  //this controller is responsible of game screen and its animations

  Rx<GameModel> model = GameModel().obs;
  DimensionsController dCont = Get.find<DimensionsController>();

  void _initializeGridDimenions() {
    model.update((val) {
      val!.gridHeight = dCont.model.value.height * 0.33;
      val.gridWidth = dCont.model.value.width * 0.5;
    });
  }

  void _initializeCellsStartPoints() {
    double widthThird = model.value.gridWidth / 3;
    double heightThird = model.value.gridHeight / 3;

    Offset s0 = const Offset(0, 0);
    Offset s1 = Offset(widthThird, 0);
    Offset s2 = Offset(widthThird * 2, 0);

    Offset s3 = Offset(0, heightThird);
    Offset s4 = Offset(widthThird, heightThird);
    Offset s5 = Offset(widthThird * 2, heightThird);

    Offset s6 = Offset(0, heightThird * 2);
    Offset s7 = Offset(widthThird, heightThird * 2);
    Offset s8 = Offset(widthThird * 2, heightThird * 2);

    model.update((val) {
      val!.cellsStarPoints = [s0, s1, s2, s3, s4, s5, s6, s7, s8];
    });
  }

  void _initializeCellsCentersPoints() {
    double widthSixth = model.value.gridWidth / 6;
    double heightSixth = model.value.gridHeight / 6;

    Offset s0 = Offset(widthSixth, heightSixth);
    Offset s1 = Offset(widthSixth * 3, heightSixth);
    Offset s2 = Offset(widthSixth * 5, heightSixth);

    Offset s3 = Offset(widthSixth, heightSixth * 3);
    Offset s4 = Offset(widthSixth * 3, heightSixth * 3);
    Offset s5 = Offset(widthSixth * 5, heightSixth * 3);

    Offset s6 = Offset(widthSixth, heightSixth * 5);
    Offset s7 = Offset(widthSixth * 3, heightSixth * 5);
    Offset s8 = Offset(widthSixth * 5, heightSixth * 5);

    model.update((val) {
      val!.cellsCenterPoints = [s0, s1, s2, s3, s4, s5, s6, s7, s8];
    });
  }

  void _initializeGridAnimation() {
    // controler
    model.value.gridAnimationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    //curve
    CurvedAnimation curvedAnimation = CurvedAnimation(
        parent: model.value.gridAnimationController, curve: Curves.elasticOut);

    // tween
    Tween<Alignment> tween = Tween<Alignment>(
        begin: model.value.gridAlignment, end: const Alignment(0, 0));

    //animation
    Animation animation = tween.animate(curvedAnimation);

    //updating values
    model.value.gridAnimationController.addListener(() {
      model.update((val) {
        val!.gridAlignment = animation.value;
      });
    });
  }

  void _initializeXAnimation() {
    // controler
    model.value.xAnimationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    // tween
    Tween<double> tween = Tween<double>(begin: 0, end: 1);

    //animation
    Animation animation = tween.animate(model.value.xAnimationController);

    //updating values
    model.value.xAnimationController.addListener(() {
      model.update((val) {
        val!.progressX = animation.value;
        for (var symbol in val.xoList) {
          symbol.updateProgress();
        }
        print('${val.progressX}');
      });
    });
    //updating status
    model.value.xAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        model.value.xAnimationController.reset();
      }
    });
  }

  Future<void> _animateGameGrid() async {
    await Future.delayed(const Duration(seconds: 3));
    model.value.gridAnimationController.forward();
  }

  void putO(int index) {
    Offset position = model.value.cellsStarPoints[index];
    BigO o = BigO(position);
    model.update((val) {
      val!.xoList.add(o);
    });
  }

  void putX(int index) {
    Offset position = model.value.cellsStarPoints[index];
    BigX x = BigX(position: position);

    model.update((val) {
      val!.xoList.add(x);
    });

    //firing animation
    model.value.xAnimationController.forward();
  }

  @override
  void onInit() {
    super.onInit();
    _initializeGridDimenions();
    _initializeCellsStartPoints();
    _initializeCellsCentersPoints();
    _initializeGridAnimation();
    _initializeXAnimation();
    _animateGameGrid();
  }

  @override
  void onClose() {
    super.onClose();
    // model.value.oAnimationController.dispose();
    model.value.xAnimationController.dispose();
    model.value.gridAnimationController.dispose();
  }
}
