import 'package:flutter/material.dart';

abstract class MySymbol {
  drawManager({
    required Canvas canvas,
    required Size size,
    required List<Color> xBorderGradient,
    required List<Color> xBodyGradient,
    required List<Color> oBorderGradient,
    required List<Color> oBodyGradient,
    required double progress,
  });
  drawMySymbol({
    required Canvas canvas,
    required Size size,
    required List<Color> xBorderGradient,
    required List<Color> xBodyGradient,
    required List<Color> oBorderGradient,
    required List<Color> oBodyGradient,
    required double progress,
  });
}
