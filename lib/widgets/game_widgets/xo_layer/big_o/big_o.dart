import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/xo_layer/big_o/o_paths_paints.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/xo_layer/drawing_status.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/xo_layer/my_symbol.dart';

class BigO implements MySymbol {
  Offset position;

  BigO(this.position);
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
    Paint borderPaint = oBorderPaint(size, position, oBorderGradient);
    Paint bodyPaint = oBodyPaint(size, position, oBodyGradient);

    //2  path
    Path clippedPath = oClippedPath(size);
    Path pathBorders = oBorders(size);

    //3. transformation
    var scalingMatrix = Float64List.fromList(
        [progress, 0, 0, 0, 0, progress, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]);

    clippedPath = clippedPath.transform(scalingMatrix);
    pathBorders = pathBorders.transform(scalingMatrix);

    //4. shifting to the desired position
    Offset pathBordersCenter = pathBorders.getBounds().center;
    pathBorders = pathBorders.shift(position - pathBordersCenter);

    Offset clippedPathCenter = clippedPath.getBounds().center;
    clippedPath = clippedPath.shift(position - clippedPathCenter);

    //5 drawing
    canvas.drawPath(clippedPath, bodyPaint);
    canvas.drawPath(pathBorders, borderPaint);
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
