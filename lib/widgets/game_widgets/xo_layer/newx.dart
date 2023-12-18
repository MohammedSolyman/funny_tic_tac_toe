
// class MyPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     //border paint
//     Paint borderStrokePaint = Paint();
//     borderStrokePaint.color = Colors.black;
//     borderStrokePaint.style = PaintingStyle.stroke;
//     borderStrokePaint.strokeWidth = 7;

//     //body paint
//     Paint bodyPaint = Paint();
//     bodyPaint.color = Colors.red;
//     bodyPaint.style = PaintingStyle.fill;

//     //path
//     Path path1 = xPath1(size);
//     Path path2 = xPath2(size);
//     Path path3 = xPath3(size);

//     //drawing
//     //path1
//     canvas.drawPath(path1, bodyPaint);
//     canvas.drawPath(path1, borderStrokePaint);
//     //path2
//     canvas.drawPath(path2, borderStrokePaint);
//     //path3
//     canvas.drawPath(path3, borderStrokePaint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

// Path xPath1(Size size) {
//   Path path = Path();
//   final double _xScaling = size.width / 1000;
//   final double _yScaling = size.height / 1000;
//   path.moveTo(273 * _xScaling, 880 * _yScaling);
//   path.cubicTo(
//     261 * _xScaling,
//     875 * _yScaling,
//     246 * _xScaling,
//     862 * _yScaling,
//     240 * _xScaling,
//     851 * _yScaling,
//   );
//   path.cubicTo(
//     228 * _xScaling,
//     827 * _yScaling,
//     231 * _xScaling,
//     819 * _yScaling,
//     339 * _xScaling,
//     632 * _yScaling,
//   );
//   path.cubicTo(
//     378 * _xScaling,
//     564 * _yScaling,
//     410 * _xScaling,
//     505 * _yScaling,
//     410 * _xScaling,
//     500 * _yScaling,
//   );
//   path.cubicTo(
//     410 * _xScaling,
//     496 * _yScaling,
//     370 * _xScaling,
//     423 * _yScaling,
//     320 * _xScaling,
//     339 * _yScaling,
//   );
//   path.cubicTo(
//     271 * _xScaling,
//     255 * _yScaling,
//     230 * _xScaling,
//     180 * _yScaling,
//     230 * _xScaling,
//     172 * _yScaling,
//   );
//   path.cubicTo(
//     230 * _xScaling,
//     150 * _yScaling,
//     278 * _xScaling,
//     110 * _yScaling,
//     304 * _xScaling,
//     110 * _yScaling,
//   );
//   path.cubicTo(
//     335 * _xScaling,
//     110 * _yScaling,
//     350 * _xScaling,
//     129 * _yScaling,
//     429 * _xScaling,
//     273 * _yScaling,
//   );
//   path.cubicTo(
//     465 * _xScaling,
//     338 * _yScaling,
//     496 * _xScaling,
//     390 * _yScaling,
//     500 * _xScaling,
//     390 * _yScaling,
//   );
//   path.cubicTo(
//     504 * _xScaling,
//     390 * _yScaling,
//     535 * _xScaling,
//     338 * _yScaling,
//     571 * _xScaling,
//     273 * _yScaling,
//   );
//   path.cubicTo(
//     650 * _xScaling,
//     129 * _yScaling,
//     665 * _xScaling,
//     110 * _yScaling,
//     696 * _xScaling,
//     110 * _yScaling,
//   );
//   path.cubicTo(
//     722 * _xScaling,
//     110 * _yScaling,
//     770 * _xScaling,
//     150 * _yScaling,
//     770 * _xScaling,
//     172 * _yScaling,
//   );
//   path.cubicTo(
//     770 * _xScaling,
//     179 * _yScaling,
//     729 * _xScaling,
//     254 * _yScaling,
//     680 * _xScaling,
//     339 * _yScaling,
//   );
//   path.cubicTo(
//     630 * _xScaling,
//     423 * _yScaling,
//     590 * _xScaling,
//     496 * _yScaling,
//     590 * _xScaling,
//     500 * _yScaling,
//   );
//   path.cubicTo(
//     590 * _xScaling,
//     504 * _yScaling,
//     629 * _xScaling,
//     575 * _yScaling,
//     676 * _xScaling,
//     658 * _yScaling,
//   );
//   path.cubicTo(
//     770 * _xScaling,
//     825 * _yScaling,
//     777 * _xScaling,
//     854 * _yScaling,
//     727 * _xScaling,
//     878 * _yScaling,
//   );
//   path.cubicTo(
//     672 * _xScaling,
//     904 * _yScaling,
//     657 * _xScaling,
//     890 * _yScaling,
//     578 * _xScaling,
//     745 * _yScaling,
//   );
//   path.cubicTo(
//     538 * _xScaling,
//     671 * _yScaling,
//     503 * _xScaling,
//     610 * _yScaling,
//     500 * _xScaling,
//     610 * _yScaling,
//   );
//   path.cubicTo(
//     497 * _xScaling,
//     610 * _yScaling,
//     466 * _xScaling,
//     665 * _yScaling,
//     430 * _xScaling,
//     732 * _yScaling,
//   );
//   path.cubicTo(
//     344 * _xScaling,
//     893 * _yScaling,
//     333 * _xScaling,
//     904 * _yScaling,
//     273 * _xScaling,
//     880 * _yScaling,
//   );
//   path.cubicTo(
//     273 * _xScaling,
//     880 * _yScaling,
//     273 * _xScaling,
//     880 * _yScaling,
//     273 * _xScaling,
//     880 * _yScaling,
//   );

//   return path;
// }

// Path xPath2(Size size) {
//   Path path = Path();
//   final double _xScaling = size.width / 1000;
//   final double _yScaling = size.height / 1000;
//   path.moveTo(656 * _xScaling, 765 * _yScaling);
//   path.cubicTo(
//     647 * _xScaling,
//     751 * _yScaling,
//     643 * _xScaling,
//     740 * _yScaling,
//     648 * _xScaling,
//     740 * _yScaling,
//   );
//   path.cubicTo(
//     653 * _xScaling,
//     740 * _yScaling,
//     662 * _xScaling,
//     751 * _yScaling,
//     668 * _xScaling,
//     765 * _yScaling,
//   );
//   path.cubicTo(
//     674 * _xScaling,
//     779 * _yScaling,
//     678 * _xScaling,
//     790 * _yScaling,
//     676 * _xScaling,
//     790 * _yScaling,
//   );
//   path.cubicTo(
//     674 * _xScaling,
//     790 * _yScaling,
//     665 * _xScaling,
//     779 * _yScaling,
//     656 * _xScaling,
//     765 * _yScaling,
//   );
//   path.cubicTo(
//     656 * _xScaling,
//     765 * _yScaling,
//     656 * _xScaling,
//     765 * _yScaling,
//     656 * _xScaling,
//     765 * _yScaling,
//   );
//   return path;
// }

// Path xPath3(Size size) {
//   Path path = Path();
//   final double _xScaling = size.width / 1000;
//   final double _yScaling = size.height / 1000;
//   path.moveTo(600 * _xScaling, 663 * _yScaling);
//   path.cubicTo(
//     582 * _xScaling,
//     631 * _yScaling,
//     558 * _xScaling,
//     590 * _yScaling,
//     548 * _xScaling,
//     573 * _yScaling,
//   );
//   path.cubicTo(
//     537 * _xScaling,
//     555 * _yScaling,
//     532 * _xScaling,
//     540 * _yScaling,
//     537 * _xScaling,
//     540 * _yScaling,
//   );
//   path.cubicTo(
//     546 * _xScaling,
//     540 * _yScaling,
//     642 * _xScaling,
//     711 * _yScaling,
//     636 * _xScaling,
//     717 * _yScaling,
//   );
//   path.cubicTo(
//     634 * _xScaling,
//     719 * _yScaling,
//     618 * _xScaling,
//     695 * _yScaling,
//     600 * _xScaling,
//     663 * _yScaling,
//   );
//   path.cubicTo(
//     600 * _xScaling,
//     663 * _yScaling,
//     600 * _xScaling,
//     663 * _yScaling,
//     600 * _xScaling,
//     663 * _yScaling,
//   );
//   return path;
// }
