import 'package:flutter/material.dart';

Path oPath1(Size size) {
  Path path = Path();
  final double xScaling = size.width / 1000;
  final double yScaling = size.height / 1000;
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
  return path;
}

Path oPath2(Size size) {
  Path path = Path();
  final double xScaling = size.width / 1000;
  final double yScaling = size.height / 1000;
  path.moveTo(559 * xScaling, 756 * yScaling);
  path.cubicTo(
    605 * xScaling,
    732 * yScaling,
    610 * xScaling,
    705 * yScaling,
    610 * xScaling,
    499 * yScaling,
  );
  path.cubicTo(
    610 * xScaling,
    354 * yScaling,
    607 * xScaling,
    302 * yScaling,
    596 * xScaling,
    281 * yScaling,
  );
  path.cubicTo(
    561 * xScaling,
    213 * yScaling,
    440 * xScaling,
    212 * yScaling,
    405 * xScaling,
    279 * yScaling,
  );
  path.cubicTo(
    383 * xScaling,
    323 * yScaling,
    383 * xScaling,
    677 * yScaling,
    406 * xScaling,
    721 * yScaling,
  );
  path.cubicTo(
    430 * xScaling,
    769 * yScaling,
    502 * xScaling,
    785 * yScaling,
    559 * xScaling,
    756 * yScaling,
  );
  path.cubicTo(
    559 * xScaling,
    756 * yScaling,
    559 * xScaling,
    756 * yScaling,
    559 * xScaling,
    756 * yScaling,
  );
  return path;
}

Path oPath3(Size size) {
  Path path = Path();
  final double xScaling = size.width / 1000;
  final double yScaling = size.height / 1000;
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
  return path;
}

Path oPath4(Size size) {
  Path path = Path();
  final double xScaling = size.width / 1000;
  final double yScaling = size.height / 1000;
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
  return path;
}

Path oBorders(Size size) {
  Path path = Path();
  path.addPath(oPath1(size), Offset.zero);
  path.addPath(oPath2(size), Offset.zero);
  path.addPath(oPath3(size), Offset.zero);
  path.addPath(oPath4(size), Offset.zero);
  return path;
}

Path oClippedPath(Size size) {
  Path path1 = oPath1(size);
  Path path2 = oPath2(size);
  Path clippedPath = Path.combine(PathOperation.difference, path1, path2);
  return clippedPath;
}

Paint oBorderPaint(Color oBorderColor) {
  Paint borderPaint = Paint();
  borderPaint.color = oBorderColor;
  borderPaint.style = PaintingStyle.stroke;
  borderPaint.strokeWidth = 2;
  return borderPaint;
}

Paint oBodyPaint(Color oBodyColor) {
  Paint bodyPaint = Paint();
  bodyPaint.color = oBodyColor;
  bodyPaint.style = PaintingStyle.fill;
  return bodyPaint;
}
