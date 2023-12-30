import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';

class SmallO extends StatelessWidget {
  const SmallO({super.key});

  @override
  Widget build(BuildContext context) {
    ThemingController thCon = Get.find<ThemingController>();
    DimensionsController dCont = Get.find<DimensionsController>();

    return Obx(() {
      return CustomPaint(
        painter: Painter(thCon.model.value.myTheme.backgroundColor),
        size: Size(dCont.model.value.width, dCont.model.value.height),
      );
    });
  }
}

class Painter extends CustomPainter {
  final Color color;
  Painter(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    final double xScaling = size.width / 1000;
    final double yScaling = size.height / 1000;

    //paint
    Paint paint = Paint();
    paint.color = color;
    paint.style = PaintingStyle.fill;
    Path path = Path();

    //////////////////////////////////////////////////////////////
    //path big rectangle
    Rect rect = Rect.fromCenter(
        center: Offset(size.width * 0.5, size.height * 0.5),
        width: size.width,
        height: size.height);

    path.addRect(rect);
    //////////////////////////////////////////////////////////////
    //path group 1
    path.moveTo(420 * xScaling, 881 * yScaling);
    path.cubicTo(
      339 * xScaling,
      855 * yScaling,
      291 * xScaling,
      807 * yScaling,
      271 * xScaling,
      735 * yScaling,
    );
    path.cubicTo(
      257 * xScaling,
      683 * yScaling,
      257 * xScaling,
      317 * yScaling,
      271 * xScaling,
      265 * yScaling,
    );
    path.cubicTo(
      286 * xScaling,
      210 * yScaling,
      323 * xScaling,
      164 * yScaling,
      373 * xScaling,
      138 * yScaling,
    );
    path.cubicTo(
      436 * xScaling,
      104 * yScaling,
      568 * xScaling,
      106 * yScaling,
      630 * xScaling,
      140 * yScaling,
    );
    path.cubicTo(
      679 * xScaling,
      168 * yScaling,
      714 * xScaling,
      213 * yScaling,
      730 * xScaling,
      269 * yScaling,
    );
    path.cubicTo(
      743 * xScaling,
      316 * yScaling,
      743 * xScaling,
      684 * yScaling,
      730 * xScaling,
      731 * yScaling,
    );
    path.cubicTo(
      703 * xScaling,
      828 * yScaling,
      633 * xScaling,
      879 * yScaling,
      517 * xScaling,
      886 * yScaling,
    );
    path.cubicTo(
      478 * xScaling,
      888 * yScaling,
      434 * xScaling,
      886 * yScaling,
      420 * xScaling,
      881 * yScaling,
    );
    path.cubicTo(
      420 * xScaling,
      881 * yScaling,
      420 * xScaling,
      881 * yScaling,
      420 * xScaling,
      881 * yScaling,
    );
    path.moveTo(574 * xScaling, 859 * yScaling);
    path.cubicTo(
      639 * xScaling,
      843 * yScaling,
      687 * xScaling,
      799 * yScaling,
      705 * xScaling,
      738 * yScaling,
    );
    path.cubicTo(
      726 * xScaling,
      666 * yScaling,
      726 * xScaling,
      335 * yScaling,
      705 * xScaling,
      264 * yScaling,
    );
    path.cubicTo(
      683 * xScaling,
      189 * yScaling,
      624 * xScaling,
      144 * yScaling,
      531 * xScaling,
      133 * yScaling,
    );
    path.cubicTo(
      418 * xScaling,
      120 * yScaling,
      322 * xScaling,
      173 * yScaling,
      295 * xScaling,
      262 * yScaling,
    );
    path.cubicTo(
      274 * xScaling,
      335 * yScaling,
      274 * xScaling,
      665 * yScaling,
      295 * xScaling,
      738 * yScaling,
    );
    path.cubicTo(
      326 * xScaling,
      841 * yScaling,
      444 * xScaling,
      892 * yScaling,
      574 * xScaling,
      859 * yScaling,
    );
    path.cubicTo(
      574 * xScaling,
      859 * yScaling,
      574 * xScaling,
      859 * yScaling,
      574 * xScaling,
      859 * yScaling,
    );

    // /////////////////////////////////////////////////////////////
    // //path group 2
    // path.moveTo(429 * _xScaling, 775 * _yScaling);
    // path.cubicTo(
    //   378 * _xScaling,
    //   747 * _yScaling,
    //   370 * _xScaling,
    //   711 * _yScaling,
    //   370 * _xScaling,
    //   500 * _yScaling,
    // );
    // path.cubicTo(
    //   370 * _xScaling,
    //   287 * _yScaling,
    //   378 * _xScaling,
    //   252 * _yScaling,
    //   431 * _xScaling,
    //   225 * _yScaling,
    // );
    // path.cubicTo(
    //   494 * _xScaling,
    //   192 * _yScaling,
    //   587 * _xScaling,
    //   217 * _yScaling,
    //   614 * _xScaling,
    //   275 * _yScaling,
    // );
    // path.cubicTo(
    //   637 * _xScaling,
    //   323 * _yScaling,
    //   637 * _xScaling,
    //   677 * _yScaling,
    //   614 * _xScaling,
    //   725 * _yScaling,
    // );
    // path.cubicTo(
    //   587 * _xScaling,
    //   783 * _yScaling,
    //   491 * _xScaling,
    //   809 * _yScaling,
    //   429 * _xScaling,
    //   775 * _yScaling,
    // );
    // path.cubicTo(
    //   429 * _xScaling,
    //   775 * _yScaling,
    //   429 * _xScaling,
    //   775 * _yScaling,
    //   429 * _xScaling,
    //   775 * _yScaling,
    // );
    // path.moveTo(559 * _xScaling, 756 * _yScaling);
    // path.cubicTo(
    //   605 * _xScaling,
    //   732 * _yScaling,
    //   610 * _xScaling,
    //   705 * _yScaling,
    //   610 * _xScaling,
    //   499 * _yScaling,
    // );
    // path.cubicTo(
    //   610 * _xScaling,
    //   354 * _yScaling,
    //   607 * _xScaling,
    //   302 * _yScaling,
    //   596 * _xScaling,
    //   281 * _yScaling,
    // );
    // path.cubicTo(
    //   561 * _xScaling,
    //   213 * _yScaling,
    //   440 * _xScaling,
    //   212 * _yScaling,
    //   405 * _xScaling,
    //   279 * _yScaling,
    // );
    // path.cubicTo(
    //   383 * _xScaling,
    //   323 * _yScaling,
    //   383 * _xScaling,
    //   677 * _yScaling,
    //   406 * _xScaling,
    //   721 * _yScaling,
    // );
    // path.cubicTo(
    //   430 * _xScaling,
    //   769 * _yScaling,
    //   502 * _xScaling,
    //   785 * _yScaling,
    //   559 * _xScaling,
    //   756 * _yScaling,
    // );
    // path.cubicTo(
    //   559 * _xScaling,
    //   756 * _yScaling,
    //   559 * _xScaling,
    //   756 * _yScaling,
    //   559 * _xScaling,
    //   756 * _yScaling,
    // );

    /////////////////////////////////////////////////////////////
    //path group 3
    path.moveTo(322 * xScaling, 645 * yScaling);
    path.cubicTo(
      322 * xScaling,
      629 * yScaling,
      324 * xScaling,
      623 * yScaling,
      327 * xScaling,
      633 * yScaling,
    );
    path.cubicTo(
      329 * xScaling,
      642 * yScaling,
      329 * xScaling,
      656 * yScaling,
      327 * xScaling,
      663 * yScaling,
    );
    path.cubicTo(
      324 * xScaling,
      669 * yScaling,
      322 * xScaling,
      662 * yScaling,
      322 * xScaling,
      645 * yScaling,
    );
    path.cubicTo(
      322 * xScaling,
      645 * yScaling,
      322 * xScaling,
      645 * yScaling,
      322 * xScaling,
      645 * yScaling,
    );
    /////////////////////////////////////////////////////////////
    //path group 4
    path.moveTo(324 * xScaling, 445 * yScaling);
    path.cubicTo(
      324 * xScaling,
      363 * yScaling,
      326 * xScaling,
      330 * yScaling,
      327 * xScaling,
      373 * yScaling,
    );
    path.cubicTo(
      329 * xScaling,
      416 * yScaling,
      329 * xScaling,
      483 * yScaling,
      327 * xScaling,
      523 * yScaling,
    );
    path.cubicTo(
      326 * xScaling,
      563 * yScaling,
      324 * xScaling,
      528 * yScaling,
      324 * xScaling,
      445 * yScaling,
    );
    path.cubicTo(
      324 * xScaling,
      445 * yScaling,
      324 * xScaling,
      445 * yScaling,
      324 * xScaling,
      445 * yScaling,
    );

    ///////////////////////////////////////////////////////////
    /////clipping path
    Path clippingPath = Path();
    clippingPath.moveTo(420 * xScaling, 881 * yScaling);
    clippingPath.cubicTo(
      339 * xScaling,
      855 * yScaling,
      291 * xScaling,
      807 * yScaling,
      271 * xScaling,
      735 * yScaling,
    );
    clippingPath.cubicTo(
      257 * xScaling,
      683 * yScaling,
      257 * xScaling,
      317 * yScaling,
      271 * xScaling,
      265 * yScaling,
    );
    clippingPath.cubicTo(
      286 * xScaling,
      210 * yScaling,
      323 * xScaling,
      164 * yScaling,
      373 * xScaling,
      138 * yScaling,
    );
    clippingPath.cubicTo(
      436 * xScaling,
      104 * yScaling,
      568 * xScaling,
      106 * yScaling,
      630 * xScaling,
      140 * yScaling,
    );
    clippingPath.cubicTo(
      679 * xScaling,
      168 * yScaling,
      714 * xScaling,
      213 * yScaling,
      730 * xScaling,
      269 * yScaling,
    );
    clippingPath.cubicTo(
      743 * xScaling,
      316 * yScaling,
      743 * xScaling,
      684 * yScaling,
      730 * xScaling,
      731 * yScaling,
    );
    clippingPath.cubicTo(
      703 * xScaling,
      828 * yScaling,
      633 * xScaling,
      879 * yScaling,
      517 * xScaling,
      886 * yScaling,
    );
    clippingPath.cubicTo(
      478 * xScaling,
      888 * yScaling,
      434 * xScaling,
      886 * yScaling,
      420 * xScaling,
      881 * yScaling,
    );
    clippingPath.cubicTo(
      420 * xScaling,
      881 * yScaling,
      420 * xScaling,
      881 * yScaling,
      420 * xScaling,
      881 * yScaling,
    );

    ///////////////////////////////////////////////////////////
    /////clipping
    Path finalPath = Path.combine(PathOperation.difference, path, clippingPath);

    //////////////////////////////////////////////////////////////
    //drawing
    canvas.drawPath(finalPath, paint);

    /////////////////////////////
    ///original path 2
    Path originalPath2 = Path();
    originalPath2.moveTo(574 * xScaling, 859 * yScaling);
    originalPath2.cubicTo(
      639 * xScaling,
      843 * yScaling,
      687 * xScaling,
      799 * yScaling,
      705 * xScaling,
      738 * yScaling,
    );
    originalPath2.cubicTo(
      726 * xScaling,
      666 * yScaling,
      726 * xScaling,
      335 * yScaling,
      705 * xScaling,
      264 * yScaling,
    );
    originalPath2.cubicTo(
      683 * xScaling,
      189 * yScaling,
      624 * xScaling,
      144 * yScaling,
      531 * xScaling,
      133 * yScaling,
    );
    originalPath2.cubicTo(
      418 * xScaling,
      120 * yScaling,
      322 * xScaling,
      173 * yScaling,
      295 * xScaling,
      262 * yScaling,
    );
    originalPath2.cubicTo(
      274 * xScaling,
      335 * yScaling,
      274 * xScaling,
      665 * yScaling,
      295 * xScaling,
      738 * yScaling,
    );
    originalPath2.cubicTo(
      326 * xScaling,
      841 * yScaling,
      444 * xScaling,
      892 * yScaling,
      574 * xScaling,
      859 * yScaling,
    );
    originalPath2.cubicTo(
      574 * xScaling,
      859 * yScaling,
      574 * xScaling,
      859 * yScaling,
      574 * xScaling,
      859 * yScaling,
    );

    ///////////////////////
    ///clipping path stage 2
    Path clippingPath2 = Path();
    clippingPath2.moveTo(559 * xScaling, 756 * yScaling);
    clippingPath2.cubicTo(
      605 * xScaling,
      732 * yScaling,
      610 * xScaling,
      705 * yScaling,
      610 * xScaling,
      499 * yScaling,
    );
    clippingPath2.cubicTo(
      610 * xScaling,
      354 * yScaling,
      607 * xScaling,
      302 * yScaling,
      596 * xScaling,
      281 * yScaling,
    );
    clippingPath2.cubicTo(
      561 * xScaling,
      213 * yScaling,
      440 * xScaling,
      212 * yScaling,
      405 * xScaling,
      279 * yScaling,
    );
    clippingPath2.cubicTo(
      383 * xScaling,
      323 * yScaling,
      383 * xScaling,
      677 * yScaling,
      406 * xScaling,
      721 * yScaling,
    );
    clippingPath2.cubicTo(
      430 * xScaling,
      769 * yScaling,
      502 * xScaling,
      785 * yScaling,
      559 * xScaling,
      756 * yScaling,
    );
    clippingPath2.cubicTo(
      559 * xScaling,
      756 * yScaling,
      559 * xScaling,
      756 * yScaling,
      559 * xScaling,
      756 * yScaling,
    );

    ///////////////////////////////////////////////////////////
    /////clipping
    Path finalPath2 =
        Path.combine(PathOperation.difference, originalPath2, clippingPath2);

    /////////////////////////////
    ///drawing stage 2
    canvas.drawPath(finalPath2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
