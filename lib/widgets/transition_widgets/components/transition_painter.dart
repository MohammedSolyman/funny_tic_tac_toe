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
    double stickWidth = size.width / 10;

    for (var i = 0; i < 10; i++) {
      //dimensions
      double height = size.height * 2;

      Offset p0 = Offset(i * stickWidth, displacement);
      Offset p1 = Offset(p0.dx, height + displacement);
      Offset p2 = Offset(p0.dx + stickWidth, height + displacement);
      Offset p3 = Offset(p0.dx + stickWidth, displacement);
      Offset c1 =
          Offset(p0.dx + stickWidth * 0.5, (height * 1.05) + displacement);
      Offset c2 =
          Offset(p0.dx + stickWidth * 0.5, (-height * 0.05) + displacement);
      Color bodyColor = i % 2 == 0 ? bodyColor1 : bodyColor2;
      Path path = stickPath(p0, p1, p2, p3, c1, c2);
      Paint bodyPaint = paintBody(bodyColor);
      Paint borderPaint = paintBorder(borderColor);

      //drawing
      canvas.drawPath(path, bodyPaint);
      canvas.drawPath(path, borderPaint);
    }
    // for (var i = 0; i < sticksList.length; i++) {
    //   Color bodyColor = i % 2 == 0 ? bodyColor1 : bodyColor2;

    //   sticksList[i].draw(
    //     bodyColor: bodyColor,
    //     borderColor: borderColor,
    //     canvas: canvas,
    //     size: size,
    //     displacement: displacement,
    //   );
    // }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

Path stickPath(
  Offset p0,
  Offset p1,
  Offset p2,
  Offset p3,
  Offset c1,
  Offset c2,
) {
  Path path = Path();
  path.moveTo(p0.dx, p0.dy);
  path.lineTo(p1.dx, p1.dy);
  path.conicTo(c1.dx, c1.dy, p2.dx, p2.dy, 0.5);
  path.lineTo(p3.dx, p3.dy);
  path.conicTo(c2.dx, c2.dy, p0.dx, p0.dy, 0.5);
  return path;
}

Paint paintBorder(Color borderColor) {
  //border paint
  Paint borderPaint = Paint();
  borderPaint.color = borderColor;
  borderPaint.style = PaintingStyle.stroke;
  borderPaint.strokeWidth = 5;
  return borderPaint;
}

Paint paintBody(Color bodyColor) {
  //border paint
  Paint bodyPaint = Paint();
  bodyPaint.color = bodyColor;
  bodyPaint.style = PaintingStyle.fill;
  return bodyPaint;
}
