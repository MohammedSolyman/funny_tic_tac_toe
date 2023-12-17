// import 'dart:ui';
// import 'package:flutter/foundation.dart';
// import 'package:funny_tic_tac_toe/widgets/game_widgets/xo_layer/drawing_status.dart';
// import 'package:funny_tic_tac_toe/widgets/game_widgets/xo_layer/my_symbol.dart';

// class BigX implements MySymbol {
//   Offset position;

//   BigX(this.position);
//   DrawingStatus drawingStatus = DrawingStatus.inAction;

//   @override
//   void drawMySymbol(
//       {required Canvas canvas,
//       required Size size,
//       required Color xBorderColor,
//       required Color xBodyColor,
//       required oBorderColor,
//       required Color oBodyColor,
//       required double progress}) {
//     //2.1 border paint
//     Paint paintBorder = Paint();
//     paintBorder.color = xBorderColor;
//     paintBorder.style = PaintingStyle.stroke;
//     paintBorder.strokeWidth = 2;

//     //2.2 body paint
//     Paint paintBody = Paint();
//     paintBody.color = xBodyColor;
//     paintBody.style = PaintingStyle.fill;

//     //2.3 border path
//     Path path2 = pathBorder2(size, position);

//     //transformation
//     var scalingMatrix = Float64List.fromList(
//         [progress, 0, 0, 0, 0, progress, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]);
//     path2 = path2.transform(scalingMatrix);

//     // calculating canvas center
//     Offset center = Offset(size.width * 0.5, size.height * 0.5);

//     //shifting to the center of the canvas
//     Offset path2Center = path2.getBounds().center;
//     path2 = path2.shift(center - path2Center);

//     //drawing
//     canvas.drawPath(path2, paintBody);
//   }

//   @override
//   drawManager({
//     required Canvas canvas,
//     required Size size,
//     required Color xBorderColor,
//     required Color xBodyColor,
//     required oBorderColor,
//     required Color oBodyColor,
//     required double progress,
//   }) {
//     if (progress == 1) {
//       drawingStatus = DrawingStatus.completed;
//     }

//     if (drawingStatus == DrawingStatus.inAction) {
//       drawMySymbol(
//           canvas: canvas,
//           size: size,
//           xBorderColor: xBorderColor,
//           xBodyColor: xBodyColor,
//           oBorderColor: oBorderColor,
//           oBodyColor: oBodyColor,
//           progress: progress);
//     }

//     if (drawingStatus == DrawingStatus.completed) {
//       drawMySymbol(
//           canvas: canvas,
//           size: size,
//           xBorderColor: xBorderColor,
//           xBodyColor: xBodyColor,
//           oBorderColor: oBorderColor,
//           oBodyColor: oBodyColor,
//           progress: 1);
//     }
//   }
// }

// Path pathBorder2(Size size, Offset position) {
//   Path path = Path();
//   final double xScaling = size.width / 1000;
//   final double yScaling = size.height / 1000;

//   path.moveTo(410 * xScaling, 725 * yScaling);
//   path.cubicTo(
//     453 * xScaling,
//     648 * yScaling,
//     493 * xScaling,
//     585 * yScaling,
//     500 * xScaling,
//     585 * yScaling,
//   );
//   path.cubicTo(
//     507 * xScaling,
//     585 * yScaling,
//     547 * xScaling,
//     648 * yScaling,
//     590 * xScaling,
//     725 * yScaling,
//   );
//   path.cubicTo(
//     632 * xScaling,
//     802 * yScaling,
//     674 * xScaling,
//     866 * yScaling,
//     683 * xScaling,
//     868 * yScaling,
//   );
//   path.cubicTo(
//     707 * xScaling,
//     873 * yScaling,
//     740 * xScaling,
//     852 * yScaling,
//     740 * xScaling,
//     831 * yScaling,
//   );
//   path.cubicTo(
//     740 * xScaling,
//     821 * yScaling,
//     702 * xScaling,
//     745 * yScaling,
//     655 * xScaling,
//     664 * yScaling,
//   );
//   path.cubicTo(
//     608 * xScaling,
//     582 * yScaling,
//     570 * xScaling,
//     509 * yScaling,
//     570 * xScaling,
//     501 * yScaling,
//   );
//   path.cubicTo(
//     570 * xScaling,
//     494 * yScaling,
//     611 * xScaling,
//     415 * yScaling,
//     662 * xScaling,
//     327 * yScaling,
//   );
//   path.cubicTo(
//     662 * xScaling,
//     327 * yScaling,
//     754 * xScaling,
//     168 * yScaling,
//     754 * xScaling,
//     168 * yScaling,
//   );
//   path.cubicTo(
//     754 * xScaling,
//     168 * yScaling,
//     731 * xScaling,
//     149 * yScaling,
//     731 * xScaling,
//     149 * yScaling,
//   );
//   path.cubicTo(
//     685 * xScaling,
//     111 * yScaling,
//     679 * xScaling,
//     117 * yScaling,
//     580 * xScaling,
//     298 * yScaling,
//   );
//   path.cubicTo(
//     541 * xScaling,
//     370 * yScaling,
//     504 * xScaling,
//     430 * yScaling,
//     500 * xScaling,
//     430 * yScaling,
//   );
//   path.cubicTo(
//     495 * xScaling,
//     430 * yScaling,
//     457 * xScaling,
//     367 * yScaling,
//     415 * xScaling,
//     291 * yScaling,
//   );
//   path.cubicTo(
//     374 * xScaling,
//     214 * yScaling,
//     332 * xScaling,
//     146 * yScaling,
//     324 * xScaling,
//     139 * yScaling,
//   );
//   path.cubicTo(
//     307 * xScaling,
//     125 * yScaling,
//     263 * xScaling,
//     140 * yScaling,
//     254 * xScaling,
//     163 * yScaling,
//   );
//   path.cubicTo(
//     251 * xScaling,
//     171 * yScaling,
//     290 * xScaling,
//     247 * yScaling,
//     339 * xScaling,
//     332 * yScaling,
//   );
//   path.cubicTo(
//     389 * xScaling,
//     417 * yScaling,
//     430 * xScaling,
//     493 * yScaling,
//     430 * xScaling,
//     501 * yScaling,
//   );
//   path.cubicTo(
//     430 * xScaling,
//     509 * yScaling,
//     392 * xScaling,
//     582 * yScaling,
//     345 * xScaling,
//     664 * yScaling,
//   );
//   path.cubicTo(
//     298 * xScaling,
//     745 * yScaling,
//     260 * xScaling,
//     821 * yScaling,
//     260 * xScaling,
//     831 * yScaling,
//   );
//   path.cubicTo(
//     260 * xScaling,
//     841 * yScaling,
//     268 * xScaling,
//     854 * yScaling,
//     278 * xScaling,
//     859 * yScaling,
//   );
//   path.cubicTo(
//     317 * xScaling,
//     883 * yScaling,
//     332 * xScaling,
//     868 * yScaling,
//     410 * xScaling,
//     725 * yScaling,
//   );
//   path.cubicTo(
//     410 * xScaling,
//     725 * yScaling,
//     410 * xScaling,
//     725 * yScaling,
//     410 * xScaling,
//     725 * yScaling,
//   );

//   /////////////////////////////////////////////////////
//   ///group2
//   path.moveTo(656 * xScaling, 765 * yScaling);
//   path.cubicTo(
//     647 * xScaling,
//     751 * yScaling,
//     643 * xScaling,
//     740 * yScaling,
//     648 * xScaling,
//     740 * yScaling,
//   );
//   path.cubicTo(
//     653 * xScaling,
//     740 * yScaling,
//     662 * xScaling,
//     751 * yScaling,
//     668 * xScaling,
//     765 * yScaling,
//   );
//   path.cubicTo(
//     674 * xScaling,
//     779 * yScaling,
//     678 * xScaling,
//     790 * yScaling,
//     676 * xScaling,
//     790 * yScaling,
//   );
//   path.cubicTo(
//     674 * xScaling,
//     790 * yScaling,
//     665 * xScaling,
//     779 * yScaling,
//     656 * xScaling,
//     765 * yScaling,
//   );
//   path.cubicTo(
//     656 * xScaling,
//     765 * yScaling,
//     656 * xScaling,
//     765 * yScaling,
//     656 * xScaling,
//     765 * yScaling,
//   );

//   /////////////////////////////////////////////////////
//   ///group3
//   path.moveTo(600 * xScaling, 663 * yScaling);
//   path.cubicTo(
//     582 * xScaling,
//     631 * yScaling,
//     558 * xScaling,
//     590 * yScaling,
//     548 * xScaling,
//     573 * yScaling,
//   );
//   path.cubicTo(
//     537 * xScaling,
//     555 * yScaling,
//     532 * xScaling,
//     540 * yScaling,
//     537 * xScaling,
//     540 * yScaling,
//   );
//   path.cubicTo(
//     546 * xScaling,
//     540 * yScaling,
//     642 * xScaling,
//     711 * yScaling,
//     636 * xScaling,
//     717 * yScaling,
//   );
//   path.cubicTo(
//     634 * xScaling,
//     719 * yScaling,
//     618 * xScaling,
//     695 * yScaling,
//     600 * xScaling,
//     663 * yScaling,
//   );
//   path.cubicTo(
//     600 * xScaling,
//     663 * yScaling,
//     600 * xScaling,
//     663 * yScaling,
//     600 * xScaling,
//     663 * yScaling,
//   );

//   path = path.shift(position);
//   return path;
// }

import 'dart:ui';
import 'package:flutter/foundation.dart';
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
      required Color xBorderColor,
      required Color xBodyColor,
      required oBorderColor,
      required Color oBodyColor,
      required double progress}) {
    //1 border paint
    Paint paintBorder = Paint();
    paintBorder.color = xBorderColor;
    paintBorder.style = PaintingStyle.stroke;
    paintBorder.strokeWidth = 2;

    //2 body paint
    Paint paintBody = Paint();
    paintBody.color = xBodyColor;
    paintBody.style = PaintingStyle.fill;

    //3  path
    Path path = myPath(size);

    //transformation
    var scalingMatrix = Float64List.fromList(
        [progress, 0, 0, 0, 0, progress, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]);
    path = path.transform(scalingMatrix);

    //shifting to the desired position
    Offset pathCenter = path.getBounds().center;
    path = path.shift(position - pathCenter);

    //4 drawing

    canvas.drawPath(path, paintBody);
    canvas.drawPath(path, paintBorder);
  }

  @override
  drawManager({
    required Canvas canvas,
    required Size size,
    required Color xBorderColor,
    required Color xBodyColor,
    required oBorderColor,
    required Color oBodyColor,
    required double progress,
  }) {
    if (progress == 1 / 3) {
      drawingStatus = DrawingStatus.completed;
    }

    if (drawingStatus == DrawingStatus.inAction) {
      drawMySymbol(
          canvas: canvas,
          size: size,
          xBorderColor: xBorderColor,
          xBodyColor: xBodyColor,
          oBorderColor: oBorderColor,
          oBodyColor: oBodyColor,
          progress: progress);
    }

    if (drawingStatus == DrawingStatus.completed) {
      drawMySymbol(
          canvas: canvas,
          size: size,
          xBorderColor: xBorderColor,
          xBodyColor: xBodyColor,
          oBorderColor: oBorderColor,
          oBodyColor: oBodyColor,
          progress: 1 / 3);
    }
  }
}

Path myPath(Size size) {
  // dimensions
  double width = size.width;
  double height = size.height;

  //path
  Path path = Path();
  path.moveTo(width * 0.5, height * 0.9);
  path.lineTo(width * 0.9, height * 0.1);
  path.lineTo(width * 0.1, height * 0.1);
  path.lineTo(width * 0.5, height * 0.9);
  path.close();
  return path;
}
