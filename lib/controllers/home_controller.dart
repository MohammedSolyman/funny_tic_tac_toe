import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/transition_controller.dart';
import 'package:funny_tic_tac_toe/models/home_model.dart';
import 'package:funny_tic_tac_toe/views/game_screen.dart';
import 'package:funny_tic_tac_toe/widgets/my_background/components/small_o.dart';
import 'package:funny_tic_tac_toe/widgets/my_background/components/small_x.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  //this controller is responsible of home screen and its animations

  Rx<HomeModel> model = HomeModel().obs;
  TransitionController tCont = Get.find<TransitionController>();

  void _initializeBackground() {
    List<Widget> x = [];
    for (var i = 0; i < 1000; i++) {
      x.add(const SmallX());
      x.add(const SmallO());
    }

    model.update((val) {
      val!.backgroundList = x;
    });
  }

  void _initializeTopAnimation() {
//                  portrait  ->  landscape
//p1x:                  0             0.8
//p1y:                 0.2             0
//controlPoint1x       0.333             0.9
//controlPoint2x       0.666              1
//controlPoint2y        0.3            0.2

    //controller
    model.value.topAnimationController =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);

    //tween
    TweenSequence<double> p1xTween = TweenSequence<double>([
      TweenSequenceItem<double>(tween: Tween(begin: 0, end: 0), weight: 1),
      TweenSequenceItem<double>(tween: Tween(begin: 0, end: 0.8), weight: 1),
    ]);

    TweenSequence<double> p1yTween = TweenSequence<double>([
      TweenSequenceItem<double>(tween: Tween(begin: 0.2, end: 0), weight: 1),
      TweenSequenceItem<double>(tween: Tween(begin: 0, end: 0), weight: 1),
    ]);

    // Tween<double> p1xTween = Tween(begin: 0, end: 0.8);
    // Tween<double> p1yTween = Tween(begin: 0.2, end: 0);
    Tween<double> controlPoint1xTween = Tween(begin: 0.333, end: 0.9);
    Tween<double> controlPoint2xTween = Tween(begin: 0.666, end: 1);
    Tween<double> controlPoint2yTween = Tween(begin: 0.3, end: 0.2);

    //animation
    Animation<double> p1xAnimation;
    Animation<double> p1yAnimation;
    Animation<double> controlPoint1xAnimation;
    Animation<double> controlPoint2xAnimation;
    Animation<double> controlPoint2yAnimation;

    p1xAnimation = p1xTween.animate(model.value.topAnimationController);
    p1yAnimation = p1yTween.animate(model.value.topAnimationController);
    controlPoint1xAnimation =
        controlPoint1xTween.animate(model.value.topAnimationController);
    controlPoint2xAnimation =
        controlPoint2xTween.animate(model.value.topAnimationController);
    controlPoint2yAnimation =
        controlPoint2yTween.animate(model.value.topAnimationController);

    //updating vales
    model.value.topAnimationController.addListener(() {
      model.update((val) {
        val!.p1x = p1xAnimation.value;
        val.p1y = p1yAnimation.value;
        val.controlPoint1x = controlPoint1xAnimation.value;
        val.controlPoint2x = controlPoint2xAnimation.value;
        val.controlPoint2y = controlPoint2yAnimation.value;
      });
    });
  }

  void _initializeGradientAnimation() {
    //controller
    model.value.gradientAnimationController =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);

    //tween
    Tween<double> tween1 = Tween(begin: -3, end: 1);
    Tween<double> tween2 = Tween(begin: -1, end: 3);

    //animation
    late Animation<double> gradientAnimation1;
    late Animation<double> gradientAnimation2;

    gradientAnimation1 =
        tween1.animate(model.value.gradientAnimationController);
    gradientAnimation2 =
        tween2.animate(model.value.gradientAnimationController);

    //updating vales
    model.value.gradientAnimationController.addListener(() {
      model.update((val) {
        val!.grdientFactorY1 = gradientAnimation1.value;
        val.grdientFactorY2 = gradientAnimation2.value;
      });
    });

    //firing animation
    model.value.gradientAnimationController.forward();
    model.value.gradientAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        model.value.gradientAnimationController.repeat();
      }
    });
  }

  void toLandscapeLayout() {
    model.value.topAnimationController.forward();
  }

  void toPortraitLayout() {
    model.value.topAnimationController.reverse();
  }

  Future<void> goToGame() async {
    //wait 3 seconds
    await Future.delayed(
        Duration(seconds: tCont.model.value.covertingDuration));

    //navigate to game screen;
    Get.to(const GameScreen());
  }

  @override
  void onInit() {
    _initializeBackground();
    _initializeTopAnimation();
    _initializeGradientAnimation();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    model.value.topAnimationController.dispose();
    model.value.gradientAnimationController.dispose();
  }
}
