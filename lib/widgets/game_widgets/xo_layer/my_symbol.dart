import 'package:flutter/material.dart';

abstract class MySymbol {
  drawManager({
    required Canvas canvas,
    required Size size,
    required Color xBorderColor,
    required Color xBodyColor,
    required oBorderColor,
    required Color oBodyColor,
    required double progress,
  });
  drawMySymbol({
    required Canvas canvas,
    required Size size,
    required Color xBorderColor,
    required Color xBodyColor,
    required oBorderColor,
    required Color oBodyColor,
    required double progress,
  });
}
