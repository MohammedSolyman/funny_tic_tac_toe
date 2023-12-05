import 'package:flutter/material.dart';

abstract class MySymbol {
  draw(Canvas canvas, Size size);
  updateProgress();
}
