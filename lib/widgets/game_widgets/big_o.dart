// import 'package:flutter/material.dart';

// class BigO {
//   Offset position;
//   BigO(this.position);
//   @override
//   void draw(Canvas canvas, Size size) {
//     double width = size.width * 0.75;
//     double height = size.height * 0.75;

//     Offset shift = Offset((-width * 0.35) + position.dx, position.dy);
//     Paint paint = Paint();
//     Path path = Path();

//     // Path number 1

//     paint.color = Colors.red;
//     path = Path();
//     path.moveTo(width * 0.88, height * 1.14);
//     path.cubicTo(width * 0.71, height * 1.11, width * 0.61, height * 1.04,
//         width * 0.57, height * 0.95);
//     path.cubicTo(width * 0.54, height * 0.88, width * 0.54, height * 0.41,
//         width * 0.57, height * 0.34);
//     path.cubicTo(width * 0.6, height * 0.27, width * 0.67, height / 5,
//         width * 0.78, height * 0.18);
//     path.cubicTo(width * 0.91, height * 0.13, width * 1.19, height * 0.14,
//         width * 1.31, height * 0.18);
//     path.cubicTo(width * 1.42, height * 0.22, width * 1.49, height * 0.28,
//         width * 1.52, height * 0.35);
//     path.cubicTo(width * 1.55, height * 0.41, width * 1.55, height * 0.88,
//         width * 1.52, height * 0.95);
//     path.cubicTo(width * 1.47, height * 1.07, width * 1.32, height * 1.14,
//         width * 1.08, height * 1.15);
//     path.cubicTo(width, height * 1.15, width * 0.91, height * 1.15,
//         width * 0.88, height * 1.14);
//     path.cubicTo(width * 0.88, height * 1.14, width * 0.88, height * 1.14,
//         width * 0.88, height * 1.14);
//     path.moveTo(width * 1.2, height * 1.11);
//     path.cubicTo(width * 1.33, height * 1.09, width * 1.43, height * 1.03,
//         width * 1.47, height * 0.95);
//     path.cubicTo(width * 1.51, height * 0.86, width * 1.51, height * 0.43,
//         width * 1.47, height * 0.34);
//     path.cubicTo(width * 1.43, height * 0.24, width * 1.3, height * 0.19,
//         width * 1.11, height * 0.17);
//     path.cubicTo(width * 0.87, height * 0.16, width * 0.67, height * 0.22,
//         width * 0.62, height * 0.34);
//     path.cubicTo(width * 0.57, height * 0.43, width * 0.57, height * 0.86,
//         width * 0.62, height * 0.95);
//     path.cubicTo(width * 0.68, height * 1.09, width * 0.93, height * 1.15,
//         width * 1.2, height * 1.11);
//     path.cubicTo(width * 1.2, height * 1.11, width * 1.2, height * 1.11,
//         width * 1.2, height * 1.11);
//     path = path.shift(shift);

//     canvas.drawPath(path, paint);

//     // Path number 2

//     paint.color = Colors.red;
//     path = Path();
//     path.moveTo(width * 0.9, height);
//     path.cubicTo(width * 0.79, height * 0.97, width * 0.77, height * 0.92,
//         width * 0.77, height * 0.65);
//     path.cubicTo(width * 0.77, height * 0.37, width * 0.79, height / 3,
//         width * 0.9, height * 0.29);
//     path.cubicTo(width * 1.03, height / 4, width * 1.22, height * 0.28,
//         width * 1.28, height * 0.36);
//     path.cubicTo(width * 1.33, height * 0.42, width * 1.33, height * 0.88,
//         width * 1.28, height * 0.94);
//     path.cubicTo(
//         width * 1.22, height, width * 1.02, height * 1.05, width * 0.9, height);
//     path.cubicTo(width * 0.9, height, width * 0.9, height, width * 0.9, height);
//     path.moveTo(width * 1.17, height * 0.98);
//     path.cubicTo(width * 1.26, height * 0.95, width * 1.27, height * 0.91,
//         width * 1.27, height * 0.65);
//     path.cubicTo(width * 1.27, height * 0.46, width * 1.27, height * 0.39,
//         width * 1.24, height * 0.36);
//     path.cubicTo(width * 1.17, height * 0.28, width * 0.92, height * 0.27,
//         width * 0.85, height * 0.36);
//     path.cubicTo(width * 0.8, height * 0.42, width * 0.8, height * 0.88,
//         width * 0.85, height * 0.93);
//     path.cubicTo(width * 0.9, height, width * 1.05, height * 1.02, width * 1.17,
//         height * 0.98);
//     path.cubicTo(width * 1.17, height * 0.98, width * 1.17, height * 0.98,
//         width * 1.17, height * 0.98);
//     path = path.shift(shift);

//     canvas.drawPath(path, paint);

//     // Path number 3

//     paint.color = Colors.red;
//     path = Path();
//     path.moveTo(width * 0.67, height * 0.83);
//     path.cubicTo(width * 0.67, height * 0.81, width * 0.68, height * 0.81,
//         width * 0.68, height * 0.82);
//     path.cubicTo(width * 0.69, height * 0.83, width * 0.69, height * 0.85,
//         width * 0.68, height * 0.86);
//     path.cubicTo(width * 0.68, height * 0.87, width * 0.67, height * 0.86,
//         width * 0.67, height * 0.83);
//     path.cubicTo(width * 0.67, height * 0.83, width * 0.67, height * 0.83,
//         width * 0.67, height * 0.83);
//     path = path.shift(shift);

//     canvas.drawPath(path, paint);

//     // Path number 4

//     paint.color = Colors.red;
//     path = Path();
//     path.moveTo(width * 0.68, height * 0.58);
//     path.cubicTo(width * 0.68, height * 0.47, width * 0.68, height * 0.43,
//         width * 0.68, height * 0.48);
//     path.cubicTo(width * 0.69, height * 0.54, width * 0.69, height * 0.62,
//         width * 0.68, height * 0.68);
//     path.cubicTo(width * 0.68, height * 0.73, width * 0.68, height * 0.68,
//         width * 0.68, height * 0.58);
//     path.cubicTo(width * 0.68, height * 0.58, width * 0.68, height * 0.58,
//         width * 0.68, height * 0.58);
//     path = path.shift(shift);

//     canvas.drawPath(path, paint);

//     //test ONLY
//     Path test = Path();
//     test.lineTo(0, size.height);
//     test.lineTo(size.width, size.height);
//     test.lineTo(size.width, 0);
//     test.lineTo(0, 0);

//     Paint pTest = Paint();
//     pTest.color = Colors.blue;
//     pTest.style = PaintingStyle.stroke;
//     pTest.strokeWidth = 5;

//     canvas.drawPath(test, pTest);
//   }
// }

import 'package:flutter/material.dart';

class BigO {
  Offset position;
  BigO(this.position);
  @override
  void draw(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.red;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2;

    Path path = Path();
    final double _xScaling = size.width / 1000;
    final double _yScaling = size.height / 1000;

    /////////////////////////////////////////////////////
    ///group1
    path.moveTo(420 * _xScaling, 881 * _yScaling);
    path.cubicTo(
      339 * _xScaling,
      855 * _yScaling,
      291 * _xScaling,
      807 * _yScaling,
      271 * _xScaling,
      735 * _yScaling,
    );
    path.cubicTo(
      257 * _xScaling,
      683 * _yScaling,
      257 * _xScaling,
      317 * _yScaling,
      271 * _xScaling,
      265 * _yScaling,
    );
    path.cubicTo(
      286 * _xScaling,
      210 * _yScaling,
      323 * _xScaling,
      164 * _yScaling,
      373 * _xScaling,
      138 * _yScaling,
    );
    path.cubicTo(
      436 * _xScaling,
      104 * _yScaling,
      568 * _xScaling,
      106 * _yScaling,
      630 * _xScaling,
      140 * _yScaling,
    );
    path.cubicTo(
      679 * _xScaling,
      168 * _yScaling,
      714 * _xScaling,
      213 * _yScaling,
      730 * _xScaling,
      269 * _yScaling,
    );
    path.cubicTo(
      743 * _xScaling,
      316 * _yScaling,
      743 * _xScaling,
      684 * _yScaling,
      730 * _xScaling,
      731 * _yScaling,
    );
    path.cubicTo(
      703 * _xScaling,
      828 * _yScaling,
      633 * _xScaling,
      879 * _yScaling,
      517 * _xScaling,
      886 * _yScaling,
    );
    path.cubicTo(
      478 * _xScaling,
      888 * _yScaling,
      434 * _xScaling,
      886 * _yScaling,
      420 * _xScaling,
      881 * _yScaling,
    );
    path.cubicTo(
      420 * _xScaling,
      881 * _yScaling,
      420 * _xScaling,
      881 * _yScaling,
      420 * _xScaling,
      881 * _yScaling,
    );
    path.moveTo(574 * _xScaling, 859 * _yScaling);
    path.cubicTo(
      639 * _xScaling,
      843 * _yScaling,
      687 * _xScaling,
      799 * _yScaling,
      705 * _xScaling,
      738 * _yScaling,
    );
    path.cubicTo(
      726 * _xScaling,
      666 * _yScaling,
      726 * _xScaling,
      335 * _yScaling,
      705 * _xScaling,
      264 * _yScaling,
    );
    path.cubicTo(
      683 * _xScaling,
      189 * _yScaling,
      624 * _xScaling,
      144 * _yScaling,
      531 * _xScaling,
      133 * _yScaling,
    );
    path.cubicTo(
      418 * _xScaling,
      120 * _yScaling,
      322 * _xScaling,
      173 * _yScaling,
      295 * _xScaling,
      262 * _yScaling,
    );
    path.cubicTo(
      274 * _xScaling,
      335 * _yScaling,
      274 * _xScaling,
      665 * _yScaling,
      295 * _xScaling,
      738 * _yScaling,
    );
    path.cubicTo(
      326 * _xScaling,
      841 * _yScaling,
      444 * _xScaling,
      892 * _yScaling,
      574 * _xScaling,
      859 * _yScaling,
    );
    path.cubicTo(
      574 * _xScaling,
      859 * _yScaling,
      574 * _xScaling,
      859 * _yScaling,
      574 * _xScaling,
      859 * _yScaling,
    );

    /////////////////////////////////////////////////////
    ///group2

    path.moveTo(429 * _xScaling, 775 * _yScaling);
    path.cubicTo(
      378 * _xScaling,
      747 * _yScaling,
      370 * _xScaling,
      711 * _yScaling,
      370 * _xScaling,
      500 * _yScaling,
    );
    path.cubicTo(
      370 * _xScaling,
      287 * _yScaling,
      378 * _xScaling,
      252 * _yScaling,
      431 * _xScaling,
      225 * _yScaling,
    );
    path.cubicTo(
      494 * _xScaling,
      192 * _yScaling,
      587 * _xScaling,
      217 * _yScaling,
      614 * _xScaling,
      275 * _yScaling,
    );
    path.cubicTo(
      637 * _xScaling,
      323 * _yScaling,
      637 * _xScaling,
      677 * _yScaling,
      614 * _xScaling,
      725 * _yScaling,
    );
    path.cubicTo(
      587 * _xScaling,
      783 * _yScaling,
      491 * _xScaling,
      809 * _yScaling,
      429 * _xScaling,
      775 * _yScaling,
    );
    path.cubicTo(
      429 * _xScaling,
      775 * _yScaling,
      429 * _xScaling,
      775 * _yScaling,
      429 * _xScaling,
      775 * _yScaling,
    );
    path.moveTo(559 * _xScaling, 756 * _yScaling);
    path.cubicTo(
      605 * _xScaling,
      732 * _yScaling,
      610 * _xScaling,
      705 * _yScaling,
      610 * _xScaling,
      499 * _yScaling,
    );
    path.cubicTo(
      610 * _xScaling,
      354 * _yScaling,
      607 * _xScaling,
      302 * _yScaling,
      596 * _xScaling,
      281 * _yScaling,
    );
    path.cubicTo(
      561 * _xScaling,
      213 * _yScaling,
      440 * _xScaling,
      212 * _yScaling,
      405 * _xScaling,
      279 * _yScaling,
    );
    path.cubicTo(
      383 * _xScaling,
      323 * _yScaling,
      383 * _xScaling,
      677 * _yScaling,
      406 * _xScaling,
      721 * _yScaling,
    );
    path.cubicTo(
      430 * _xScaling,
      769 * _yScaling,
      502 * _xScaling,
      785 * _yScaling,
      559 * _xScaling,
      756 * _yScaling,
    );
    path.cubicTo(
      559 * _xScaling,
      756 * _yScaling,
      559 * _xScaling,
      756 * _yScaling,
      559 * _xScaling,
      756 * _yScaling,
    );

    /////////////////////////////////////////////////////
    ///group3

    path.moveTo(322 * _xScaling, 645 * _yScaling);
    path.cubicTo(
      322 * _xScaling,
      629 * _yScaling,
      324 * _xScaling,
      623 * _yScaling,
      327 * _xScaling,
      633 * _yScaling,
    );
    path.cubicTo(
      329 * _xScaling,
      642 * _yScaling,
      329 * _xScaling,
      656 * _yScaling,
      327 * _xScaling,
      663 * _yScaling,
    );
    path.cubicTo(
      324 * _xScaling,
      669 * _yScaling,
      322 * _xScaling,
      662 * _yScaling,
      322 * _xScaling,
      645 * _yScaling,
    );
    path.cubicTo(
      322 * _xScaling,
      645 * _yScaling,
      322 * _xScaling,
      645 * _yScaling,
      322 * _xScaling,
      645 * _yScaling,
    );

    /////////////////////////////////////////////////////
    ///group4

    path.moveTo(324 * _xScaling, 445 * _yScaling);
    path.cubicTo(
      324 * _xScaling,
      363 * _yScaling,
      326 * _xScaling,
      330 * _yScaling,
      327 * _xScaling,
      373 * _yScaling,
    );
    path.cubicTo(
      329 * _xScaling,
      416 * _yScaling,
      329 * _xScaling,
      483 * _yScaling,
      327 * _xScaling,
      523 * _yScaling,
    );
    path.cubicTo(
      326 * _xScaling,
      563 * _yScaling,
      324 * _xScaling,
      528 * _yScaling,
      324 * _xScaling,
      445 * _yScaling,
    );
    path.cubicTo(
      324 * _xScaling,
      445 * _yScaling,
      324 * _xScaling,
      445 * _yScaling,
      324 * _xScaling,
      445 * _yScaling,
    );

    path = path.shift(position);
    canvas.drawPath(path, paint);
    //test ONLY
    Path test = Path();
    test.lineTo(0, size.height);
    test.lineTo(size.width, size.height);
    test.lineTo(size.width, 0);
    test.lineTo(0, 0);

    Paint pTest = Paint();
    pTest.color = Colors.blue;
    pTest.style = PaintingStyle.stroke;
    pTest.strokeWidth = 5;

    canvas.drawPath(test, pTest);
  }
}
