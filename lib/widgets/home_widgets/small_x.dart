import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';

class SmallX extends StatelessWidget {
  const SmallX({super.key});

  @override
  Widget build(BuildContext context) {
    ThemingController thCon = Get.find<ThemingController>();
    return CustomPaint(
      painter: Painter(thCon.model.value.myTheme.bgColor1),
      size: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
    );
  }
}

class Painter extends CustomPainter {
  final Color color;
  Painter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final double xScaling = size.width / 1000;
    final double yScaling = size.height / 1000;

    ////////////////////////////////////////
    // original path //////////////////////
    Path originalPath = Path();

    Rect rect = Rect.fromCenter(
        center: Offset(size.width * 0.5, size.height * 0.5),
        width: size.width,
        height: size.height);
    originalPath.addRect(rect);

    ////////////////////////////////////////
    // original path //////////////////////
    Path clippingPath = Path();
    clippingPath.moveTo(273 * xScaling, 880 * yScaling);
    clippingPath.cubicTo(
      261 * xScaling,
      875 * yScaling,
      246 * xScaling,
      862 * yScaling,
      240 * xScaling,
      851 * yScaling,
    );
    clippingPath.cubicTo(
      228 * xScaling,
      827 * yScaling,
      231 * xScaling,
      819 * yScaling,
      339 * xScaling,
      632 * yScaling,
    );
    clippingPath.cubicTo(
      378 * xScaling,
      564 * yScaling,
      410 * xScaling,
      505 * yScaling,
      410 * xScaling,
      500 * yScaling,
    );
    clippingPath.cubicTo(
      410 * xScaling,
      496 * yScaling,
      370 * xScaling,
      423 * yScaling,
      320 * xScaling,
      339 * yScaling,
    );
    clippingPath.cubicTo(
      271 * xScaling,
      255 * yScaling,
      230 * xScaling,
      180 * yScaling,
      230 * xScaling,
      172 * yScaling,
    );
    clippingPath.cubicTo(
      230 * xScaling,
      150 * yScaling,
      278 * xScaling,
      110 * yScaling,
      304 * xScaling,
      110 * yScaling,
    );
    clippingPath.cubicTo(
      335 * xScaling,
      110 * yScaling,
      350 * xScaling,
      129 * yScaling,
      429 * xScaling,
      273 * yScaling,
    );
    clippingPath.cubicTo(
      465 * xScaling,
      338 * yScaling,
      496 * xScaling,
      390 * yScaling,
      500 * xScaling,
      390 * yScaling,
    );
    clippingPath.cubicTo(
      504 * xScaling,
      390 * yScaling,
      535 * xScaling,
      338 * yScaling,
      571 * xScaling,
      273 * yScaling,
    );
    clippingPath.cubicTo(
      650 * xScaling,
      129 * yScaling,
      665 * xScaling,
      110 * yScaling,
      696 * xScaling,
      110 * yScaling,
    );
    clippingPath.cubicTo(
      722 * xScaling,
      110 * yScaling,
      770 * xScaling,
      150 * yScaling,
      770 * xScaling,
      172 * yScaling,
    );
    clippingPath.cubicTo(
      770 * xScaling,
      179 * yScaling,
      729 * xScaling,
      254 * yScaling,
      680 * xScaling,
      339 * yScaling,
    );
    clippingPath.cubicTo(
      630 * xScaling,
      423 * yScaling,
      590 * xScaling,
      496 * yScaling,
      590 * xScaling,
      500 * yScaling,
    );
    clippingPath.cubicTo(
      590 * xScaling,
      504 * yScaling,
      629 * xScaling,
      575 * yScaling,
      676 * xScaling,
      658 * yScaling,
    );
    clippingPath.cubicTo(
      770 * xScaling,
      825 * yScaling,
      777 * xScaling,
      854 * yScaling,
      727 * xScaling,
      878 * yScaling,
    );
    clippingPath.cubicTo(
      672 * xScaling,
      904 * yScaling,
      657 * xScaling,
      890 * yScaling,
      578 * xScaling,
      745 * yScaling,
    );
    clippingPath.cubicTo(
      538 * xScaling,
      671 * yScaling,
      503 * xScaling,
      610 * yScaling,
      500 * xScaling,
      610 * yScaling,
    );
    clippingPath.cubicTo(
      497 * xScaling,
      610 * yScaling,
      466 * xScaling,
      665 * yScaling,
      430 * xScaling,
      732 * yScaling,
    );
    clippingPath.cubicTo(
      344 * xScaling,
      893 * yScaling,
      333 * xScaling,
      904 * yScaling,
      273 * xScaling,
      880 * yScaling,
    );
    clippingPath.cubicTo(
      273 * xScaling,
      880 * yScaling,
      273 * xScaling,
      880 * yScaling,
      273 * xScaling,
      880 * yScaling,
    );

    ////////////////////////////////////////////////////////
    // original paint
    Paint originalpaint = Paint();
    originalpaint.color = color;
    originalpaint.style = PaintingStyle.fill;
    originalpaint.strokeWidth = 5;

    ////////////////////////////////////////////////////////
    // internal clipping
    Path finalPath =
        Path.combine(PathOperation.difference, originalPath, clippingPath);
    canvas.drawPath(finalPath, originalpaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
