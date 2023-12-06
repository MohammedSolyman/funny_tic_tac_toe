import 'package:flutter/material.dart';

abstract class MySymbol {
  draw(Canvas canvas, Size size, Color xBorderColor, Color xBodyColor,
      Color oBorderColor, Color oBodyColor);

  updateProgress();
}
