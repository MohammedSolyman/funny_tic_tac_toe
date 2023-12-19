import 'package:flutter/material.dart';

class HomeModel {
  List<Widget> backgroundList = [];
  //top block animation
  late AnimationController topAnimationController;
  double p1x = 0;
  double p1y = 0.2;
  double controlPoint1x = 0.333;
  double controlPoint2x = 0.666;
  double controlPoint2y = 0.3;

  //background animation
  late AnimationController gradientAnimationController;
  double grdientFactorY1 = -1;
  double grdientFactorY2 = 1;

  //play mode
  bool withAi = true;
}
