import 'dart:ui';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_symbol.dart';

class BigX implements MySymbol {
  Offset position;
  double progress = 0;
  BigX({required this.position});

  @override
  void draw(Canvas canvas, Size size, Color xBorderColor, Color xBodyColor,
      Color oBorderColor, Color oBodyColor) {
    //border paint
    Paint paint = Paint();
    paint.color = xBorderColor;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 0.5;

    //body paint
    Paint paint2 = Paint();
    paint2.color = xBodyColor;
    paint2.style = PaintingStyle.fill;

    Path path = Path();
    final double xScaling = size.width / 1000;
    final double yScaling = size.height / 1000;

    /////////////////////////////////////////////////////
    ///group1
    path.moveTo(273 * xScaling, 880 * yScaling);
    path.cubicTo(
      261 * xScaling,
      875 * yScaling,
      246 * xScaling,
      862 * yScaling,
      240 * xScaling,
      851 * yScaling,
    );
    path.cubicTo(
      228 * xScaling,
      827 * yScaling,
      231 * xScaling,
      819 * yScaling,
      339 * xScaling,
      632 * yScaling,
    );
    path.cubicTo(
      378 * xScaling,
      564 * yScaling,
      410 * xScaling,
      505 * yScaling,
      410 * xScaling,
      500 * yScaling,
    );
    path.cubicTo(
      410 * xScaling,
      496 * yScaling,
      370 * xScaling,
      423 * yScaling,
      320 * xScaling,
      339 * yScaling,
    );
    path.cubicTo(
      271 * xScaling,
      255 * yScaling,
      230 * xScaling,
      180 * yScaling,
      230 * xScaling,
      172 * yScaling,
    );
    path.cubicTo(
      230 * xScaling,
      150 * yScaling,
      278 * xScaling,
      110 * yScaling,
      304 * xScaling,
      110 * yScaling,
    );
    path.cubicTo(
      335 * xScaling,
      110 * yScaling,
      350 * xScaling,
      129 * yScaling,
      429 * xScaling,
      273 * yScaling,
    );
    path.cubicTo(
      465 * xScaling,
      338 * yScaling,
      496 * xScaling,
      390 * yScaling,
      500 * xScaling,
      390 * yScaling,
    );
    path.cubicTo(
      504 * xScaling,
      390 * yScaling,
      535 * xScaling,
      338 * yScaling,
      571 * xScaling,
      273 * yScaling,
    );
    path.cubicTo(
      650 * xScaling,
      129 * yScaling,
      665 * xScaling,
      110 * yScaling,
      696 * xScaling,
      110 * yScaling,
    );
    path.cubicTo(
      722 * xScaling,
      110 * yScaling,
      770 * xScaling,
      150 * yScaling,
      770 * xScaling,
      172 * yScaling,
    );
    path.cubicTo(
      770 * xScaling,
      179 * yScaling,
      729 * xScaling,
      254 * yScaling,
      680 * xScaling,
      339 * yScaling,
    );
    path.cubicTo(
      630 * xScaling,
      423 * yScaling,
      590 * xScaling,
      496 * yScaling,
      590 * xScaling,
      500 * yScaling,
    );
    path.cubicTo(
      590 * xScaling,
      504 * yScaling,
      629 * xScaling,
      575 * yScaling,
      676 * xScaling,
      658 * yScaling,
    );
    path.cubicTo(
      770 * xScaling,
      825 * yScaling,
      777 * xScaling,
      854 * yScaling,
      727 * xScaling,
      878 * yScaling,
    );
    path.cubicTo(
      672 * xScaling,
      904 * yScaling,
      657 * xScaling,
      890 * yScaling,
      578 * xScaling,
      745 * yScaling,
    );
    path.cubicTo(
      538 * xScaling,
      671 * yScaling,
      503 * xScaling,
      610 * yScaling,
      500 * xScaling,
      610 * yScaling,
    );
    path.cubicTo(
      497 * xScaling,
      610 * yScaling,
      466 * xScaling,
      665 * yScaling,
      430 * xScaling,
      732 * yScaling,
    );
    path.cubicTo(
      344 * xScaling,
      893 * yScaling,
      333 * xScaling,
      904 * yScaling,
      273 * xScaling,
      880 * yScaling,
    );
    path.cubicTo(
      273 * xScaling,
      880 * yScaling,
      273 * xScaling,
      880 * yScaling,
      273 * xScaling,
      880 * yScaling,
    );
    path.moveTo(410 * xScaling, 725 * yScaling);
    path.cubicTo(
      453 * xScaling,
      648 * yScaling,
      493 * xScaling,
      585 * yScaling,
      500 * xScaling,
      585 * yScaling,
    );
    path.cubicTo(
      507 * xScaling,
      585 * yScaling,
      547 * xScaling,
      648 * yScaling,
      590 * xScaling,
      725 * yScaling,
    );
    path.cubicTo(
      632 * xScaling,
      802 * yScaling,
      674 * xScaling,
      866 * yScaling,
      683 * xScaling,
      868 * yScaling,
    );
    path.cubicTo(
      707 * xScaling,
      873 * yScaling,
      740 * xScaling,
      852 * yScaling,
      740 * xScaling,
      831 * yScaling,
    );
    path.cubicTo(
      740 * xScaling,
      821 * yScaling,
      702 * xScaling,
      745 * yScaling,
      655 * xScaling,
      664 * yScaling,
    );
    path.cubicTo(
      608 * xScaling,
      582 * yScaling,
      570 * xScaling,
      509 * yScaling,
      570 * xScaling,
      501 * yScaling,
    );
    path.cubicTo(
      570 * xScaling,
      494 * yScaling,
      611 * xScaling,
      415 * yScaling,
      662 * xScaling,
      327 * yScaling,
    );
    path.cubicTo(
      662 * xScaling,
      327 * yScaling,
      754 * xScaling,
      168 * yScaling,
      754 * xScaling,
      168 * yScaling,
    );
    path.cubicTo(
      754 * xScaling,
      168 * yScaling,
      731 * xScaling,
      149 * yScaling,
      731 * xScaling,
      149 * yScaling,
    );
    path.cubicTo(
      685 * xScaling,
      111 * yScaling,
      679 * xScaling,
      117 * yScaling,
      580 * xScaling,
      298 * yScaling,
    );
    path.cubicTo(
      541 * xScaling,
      370 * yScaling,
      504 * xScaling,
      430 * yScaling,
      500 * xScaling,
      430 * yScaling,
    );
    path.cubicTo(
      495 * xScaling,
      430 * yScaling,
      457 * xScaling,
      367 * yScaling,
      415 * xScaling,
      291 * yScaling,
    );
    path.cubicTo(
      374 * xScaling,
      214 * yScaling,
      332 * xScaling,
      146 * yScaling,
      324 * xScaling,
      139 * yScaling,
    );
    path.cubicTo(
      307 * xScaling,
      125 * yScaling,
      263 * xScaling,
      140 * yScaling,
      254 * xScaling,
      163 * yScaling,
    );
    path.cubicTo(
      251 * xScaling,
      171 * yScaling,
      290 * xScaling,
      247 * yScaling,
      339 * xScaling,
      332 * yScaling,
    );
    path.cubicTo(
      389 * xScaling,
      417 * yScaling,
      430 * xScaling,
      493 * yScaling,
      430 * xScaling,
      501 * yScaling,
    );
    path.cubicTo(
      430 * xScaling,
      509 * yScaling,
      392 * xScaling,
      582 * yScaling,
      345 * xScaling,
      664 * yScaling,
    );
    path.cubicTo(
      298 * xScaling,
      745 * yScaling,
      260 * xScaling,
      821 * yScaling,
      260 * xScaling,
      831 * yScaling,
    );
    path.cubicTo(
      260 * xScaling,
      841 * yScaling,
      268 * xScaling,
      854 * yScaling,
      278 * xScaling,
      859 * yScaling,
    );
    path.cubicTo(
      317 * xScaling,
      883 * yScaling,
      332 * xScaling,
      868 * yScaling,
      410 * xScaling,
      725 * yScaling,
    );
    path.cubicTo(
      410 * xScaling,
      725 * yScaling,
      410 * xScaling,
      725 * yScaling,
      410 * xScaling,
      725 * yScaling,
    );

    /////////////////////////////////////////////////////
    ///group2
    path.moveTo(656 * xScaling, 765 * yScaling);
    path.cubicTo(
      647 * xScaling,
      751 * yScaling,
      643 * xScaling,
      740 * yScaling,
      648 * xScaling,
      740 * yScaling,
    );
    path.cubicTo(
      653 * xScaling,
      740 * yScaling,
      662 * xScaling,
      751 * yScaling,
      668 * xScaling,
      765 * yScaling,
    );
    path.cubicTo(
      674 * xScaling,
      779 * yScaling,
      678 * xScaling,
      790 * yScaling,
      676 * xScaling,
      790 * yScaling,
    );
    path.cubicTo(
      674 * xScaling,
      790 * yScaling,
      665 * xScaling,
      779 * yScaling,
      656 * xScaling,
      765 * yScaling,
    );
    path.cubicTo(
      656 * xScaling,
      765 * yScaling,
      656 * xScaling,
      765 * yScaling,
      656 * xScaling,
      765 * yScaling,
    );

    /////////////////////////////////////////////////////
    ///group3
    path.moveTo(600 * xScaling, 663 * yScaling);
    path.cubicTo(
      582 * xScaling,
      631 * yScaling,
      558 * xScaling,
      590 * yScaling,
      548 * xScaling,
      573 * yScaling,
    );
    path.cubicTo(
      537 * xScaling,
      555 * yScaling,
      532 * xScaling,
      540 * yScaling,
      537 * xScaling,
      540 * yScaling,
    );
    path.cubicTo(
      546 * xScaling,
      540 * yScaling,
      642 * xScaling,
      711 * yScaling,
      636 * xScaling,
      717 * yScaling,
    );
    path.cubicTo(
      634 * xScaling,
      719 * yScaling,
      618 * xScaling,
      695 * yScaling,
      600 * xScaling,
      663 * yScaling,
    );
    path.cubicTo(
      600 * xScaling,
      663 * yScaling,
      600 * xScaling,
      663 * yScaling,
      600 * xScaling,
      663 * yScaling,
    );

    path = path.shift(position);

    final pathMetrics = path.computeMetrics();

    for (final pathMetric in pathMetrics) {
      final length = pathMetric.length * progress;
      for (double distance = 0; distance <= length; distance += 1) {
        Tangent? pos = pathMetric.getTangentForOffset(distance);
        canvas.drawCircle(pos!.position, 0.5, paint);
      }
    }
  }

  @override
  updateProgress() {
    if (progress < 1) {
      progress += 0.1;
    }
  }
}
