import 'dart:ui';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_symbol.dart';

class BigO implements MySymbol {
  Offset position;
  double progress = 0;
  BigO(this.position);

  @override
  void draw(Canvas canvas, Size size, Color xBorderColor, Color xBodyColor,
      Color oBorderColor, Color oBodyColor) {
    //stage1: borders only /////////////////////////////////////
    //1.1 border paint
    Paint paint = Paint();
    paint.color = oBorderColor;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 0.5;

    //1.2 border path
    Path path = oBordersOnlyPath(size, position);

    //1.3 tracing cantour
    final pathMetrics = path.computeMetrics();
    for (final pathMetric in pathMetrics) {
      final length = pathMetric.length * progress;
      for (double distance = 0; distance <= length; distance += 1) {
        Tangent? pos = pathMetric.getTangentForOffset(distance);
        canvas.drawCircle(pos!.position, 0.5, paint);
      }
    }

    //stage2: final shape /////////////////////////////////////
    //2.1 border paint
    Paint paintBorder = Paint();
    paintBorder.color = oBorderColor;
    paintBorder.style = PaintingStyle.stroke;
    paintBorder.strokeWidth = 2;

    //2.2 body paint
    Paint paintBody = Paint();
    paintBody.color = oBodyColor;
    paintBody.style = PaintingStyle.fill;

    //2.3 border path
    Path pathBorder = oBordersPath(size, position);
    Path pathBorder2 = oBordersPath2(size, position);
    Path pathBorder3 = oBordersPath3(size, position);
    Path pathBorder4 = oBordersPath4(size, position);
    Path pathBorder5 = oBordersPath5(size, position);

    Path bodyPath =
        Path.combine(PathOperation.difference, pathBorder2, pathBorder3);

    //2.4 drawing
    if (progress >= 1) {
      canvas.drawPath(bodyPath, paintBody);
      canvas.drawPath(pathBorder, paintBorder);
      canvas.drawPath(pathBorder2, paintBorder);
      canvas.drawPath(pathBorder3, paintBorder);
      canvas.drawPath(pathBorder4, paintBorder);
      canvas.drawPath(pathBorder5, paintBorder);
    }
  }

  @override
  updateProgress() {
    if (progress < 1) {
      progress += 0.2;
    }
  }
}

Path oBordersOnlyPath(Size size, Offset position) {
  /////////////////////////////////////////////////////
  ///group1
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

  /////////////////////////////////////////////////////
  ///group2

  path.moveTo(429 * xScaling, 775 * yScaling);
  path.cubicTo(
    378 * xScaling,
    747 * yScaling,
    370 * xScaling,
    711 * yScaling,
    370 * xScaling,
    500 * yScaling,
  );
  path.cubicTo(
    370 * xScaling,
    287 * yScaling,
    378 * xScaling,
    252 * yScaling,
    431 * xScaling,
    225 * yScaling,
  );
  path.cubicTo(
    494 * xScaling,
    192 * yScaling,
    587 * xScaling,
    217 * yScaling,
    614 * xScaling,
    275 * yScaling,
  );
  path.cubicTo(
    637 * xScaling,
    323 * yScaling,
    637 * xScaling,
    677 * yScaling,
    614 * xScaling,
    725 * yScaling,
  );
  path.cubicTo(
    587 * xScaling,
    783 * yScaling,
    491 * xScaling,
    809 * yScaling,
    429 * xScaling,
    775 * yScaling,
  );
  path.cubicTo(
    429 * xScaling,
    775 * yScaling,
    429 * xScaling,
    775 * yScaling,
    429 * xScaling,
    775 * yScaling,
  );
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

  /////////////////////////////////////////////////////
  ///group3

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

  /////////////////////////////////////////////////////
  ///group4

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
  path = path.shift(position);

  return path;
}

Path oBordersPath(Size size, Offset position) {
  /////////////////////////////////////////////////////
  ///group1
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

  path = path.shift(position);
  return path;
}

Path oBordersPath2(Size size, Offset position) {
  Path path = Path();
  final double xScaling = size.width / 1000;
  final double yScaling = size.height / 1000;
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

  path = path.shift(position);
  return path;
}

Path oBordersPath3(Size size, Offset position) {
  Path path = Path();
  final double xScaling = size.width / 1000;
  final double yScaling = size.height / 1000;
  // /////////////////////////////////////////////////////
  // ///group2

  path.moveTo(429 * xScaling, 775 * yScaling);
  path.cubicTo(
    378 * xScaling,
    747 * yScaling,
    370 * xScaling,
    711 * yScaling,
    370 * xScaling,
    500 * yScaling,
  );
  path.cubicTo(
    370 * xScaling,
    287 * yScaling,
    378 * xScaling,
    252 * yScaling,
    431 * xScaling,
    225 * yScaling,
  );
  path.cubicTo(
    494 * xScaling,
    192 * yScaling,
    587 * xScaling,
    217 * yScaling,
    614 * xScaling,
    275 * yScaling,
  );
  path.cubicTo(
    637 * xScaling,
    323 * yScaling,
    637 * xScaling,
    677 * yScaling,
    614 * xScaling,
    725 * yScaling,
  );
  path.cubicTo(
    587 * xScaling,
    783 * yScaling,
    491 * xScaling,
    809 * yScaling,
    429 * xScaling,
    775 * yScaling,
  );
  path.cubicTo(
    429 * xScaling,
    775 * yScaling,
    429 * xScaling,
    775 * yScaling,
    429 * xScaling,
    775 * yScaling,
  );
  path = path.shift(position);

  return path;
}

Path oBordersPath4(Size size, Offset position) {
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

  path = path.shift(position);

  return path;
}

Path oBordersPath5(Size size, Offset position) {
  Path path = Path();
  final double xScaling = size.width / 1000;
  final double yScaling = size.height / 1000;

  /////////////////////////////////////////////////////
  ///group3

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

  /////////////////////////////////////////////////////
  ///group4

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
  path = path.shift(position);
  return path;
}
