import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/models/home_model.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/small_o.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/small_x.dart';
import 'package:get/get.dart';

// GetSingleTickerProviderStateMixin
// GetTickerProviderStateMixin
class HomeController extends GetxController with GetTickerProviderStateMixin {
  Rx<HomeModel> model = HomeModel().obs;
  late AnimationController topAnimationController;
  late Animation<double> p1xAnimation;
  late Animation<double> p1yAnimation;
  late Animation<double> controlPoint1xAnimation;
  late Animation<double> controlPoint2xAnimation;
  late Animation<double> controlPoint2yAnimation;

//                  portrait  ->  landscape
//p1x:                  0             0.8
//p1y:                 0.2             0
//controlPoint1x       0.333             0.9
//controlPoint2x       0.666              1
//controlPoint2y        0.3            0.2

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
    //dimensions

    //controller
    topAnimationController =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);

    //tween
    Tween<double> p1xTween = Tween(begin: 0, end: 0.8);
    Tween<double> p1yTween = Tween(begin: 0.2, end: 0);
    Tween<double> controlPoint1xTween = Tween(begin: 0.333, end: 0.9);
    Tween<double> controlPoint2xTween = Tween(begin: 0.666, end: 1);
    Tween<double> controlPoint2yTween = Tween(begin: 0.3, end: 0.2);

    //animation
    Animation<double> p1xAnimation = p1xTween.animate(topAnimationController);
    Animation<double> p1yAnimation = p1yTween.animate(topAnimationController);
    Animation<double> controlPoint1xAnimation =
        controlPoint1xTween.animate(topAnimationController);
    Animation<double> controlPoint2xAnimation =
        controlPoint2xTween.animate(topAnimationController);
    Animation<double> controlPoint2yAnimation =
        controlPoint2yTween.animate(topAnimationController);

    //updating vales
    topAnimationController.addListener(() {
      model.update((val) {
        val!.p1x = p1xAnimation.value;
        val.p1y = p1yAnimation.value;
        val.controlPoint1x = controlPoint1xAnimation.value;
        val.controlPoint2x = controlPoint2xAnimation.value;
        val.controlPoint2y = controlPoint2yAnimation.value;
      });
    });
  }

  toLandscapeLayout() {
    topAnimationController.forward();
  }

  toPortraitLayout() {
    topAnimationController.reverse();
  }

  @override
  void onInit() {
    _initializeBackground();
    _initializeTopAnimation();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    topAnimationController.dispose();
  }
}
