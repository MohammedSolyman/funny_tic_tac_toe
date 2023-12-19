import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/components/stick.dart';

class TransitionPainter extends CustomPainter {
  List<Stick> sticksList;
  double displacement;
  Color bodyColor1;
  Color bodyColor2;
  Color borderColor;

  TransitionPainter(
      {required this.sticksList,
      required this.displacement,
      required this.bodyColor1,
      required this.bodyColor2,
      required this.borderColor});
  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < sticksList.length; i++) {
      Color bodyColor = i % 2 == 0 ? bodyColor1 : bodyColor2;

      sticksList[i].draw(
        bodyColor: bodyColor,
        borderColor: borderColor,
        canvas: canvas,
        size: size,
        displacement: displacement,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
