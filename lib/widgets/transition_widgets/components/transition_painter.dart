import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/components/stick.dart';

class TransitionPainter extends CustomPainter {
  List<Stick> sticksList;
  double displacement;

  TransitionPainter(this.sticksList, this.displacement);
  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < sticksList.length; i++) {
      sticksList[i].draw(canvas, size, displacement: displacement);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
