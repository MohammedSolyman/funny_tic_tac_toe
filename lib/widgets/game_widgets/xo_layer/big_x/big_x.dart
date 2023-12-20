import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/xo_layer/big_x/x_paths_paints.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/xo_layer/drawing_status.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/xo_layer/my_symbol.dart';

class BigX implements MySymbol {
  Offset position;

  BigX(this.position);
  DrawingStatus drawingStatus = DrawingStatus.inAction;

  @override
  void drawMySymbol(
      {required Canvas canvas,
      required Size size,
      required List<Color> xBorderGradient,
      required List<Color> xBodyGradient,
      required List<Color> oBorderGradient,
      required List<Color> oBodyGradient,
      required double progress}) {
    //1. paint
    Paint borderPaint = xBorderPaint(size, position, xBorderGradient);
    Paint bodyPaint = xBodyPaint(size, position, xBodyGradient);

    //3  path
    Path bodyPath = xBodyPath(size);
    Path borderPath = xBorderPath(size);

    //4. transformation
    var scalingMatrix = Float64List.fromList(
        [progress, 0, 0, 0, 0, progress, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]);
    bodyPath = bodyPath.transform(scalingMatrix);
    borderPath = borderPath.transform(scalingMatrix);

    //5. shifting to the desired position
    Offset bodyPathCenter = bodyPath.getBounds().center;
    bodyPath = bodyPath.shift(position - bodyPathCenter);

    Offset borderPathCenter = borderPath.getBounds().center;
    borderPath = borderPath.shift(position - borderPathCenter);

    //6 drawing
    //body path
    canvas.drawPath(bodyPath, bodyPaint);
    canvas.drawPath(bodyPath, borderPaint);

    //border path
    canvas.drawPath(borderPath, borderPaint);
  }

  @override
  drawManager({
    required Canvas canvas,
    required Size size,
    required List<Color> xBorderGradient,
    required List<Color> xBodyGradient,
    required List<Color> oBorderGradient,
    required List<Color> oBodyGradient,
    required double progress,
  }) {
    if (progress == 1 / 3) {
      drawingStatus = DrawingStatus.completed;
    }

    if (drawingStatus == DrawingStatus.inAction) {
      drawMySymbol(
          canvas: canvas,
          size: size,
          oBodyGradient: oBodyGradient,
          oBorderGradient: oBorderGradient,
          xBodyGradient: xBodyGradient,
          xBorderGradient: xBorderGradient,
          progress: progress);
    }

    if (drawingStatus == DrawingStatus.completed) {
      drawMySymbol(
          canvas: canvas,
          size: size,
          oBodyGradient: oBodyGradient,
          oBorderGradient: oBorderGradient,
          xBodyGradient: xBodyGradient,
          xBorderGradient: xBorderGradient,
          progress: 1 / 3);
    }
  }
}
