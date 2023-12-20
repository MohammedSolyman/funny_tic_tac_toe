import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/xo_layer/my_symbol.dart';
import 'package:get/get.dart';

class XOLayer extends StatelessWidget {
  const XOLayer({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();
    ThemingController thCont = Get.find<ThemingController>();
    return Obx(() {
      return CustomPaint(
        painter: XOLayerPainter(
            xoList: gCont.model.value.xoList,
            oBodyGradient: thCont.model.value.myTheme.oBodyGradient,
            oBorderGradient: thCont.model.value.myTheme.oBorderGradient,
            xBodyGradient: thCont.model.value.myTheme.xBodyGradient,
            xBorderGradient: thCont.model.value.myTheme.xBorderGradient,
            progress: gCont.model.value.symbolProgress),
        size: Size(gCont.model.value.gridWidth, gCont.model.value.gridHeight),
      );
    });
  }
}

class XOLayerPainter extends CustomPainter {
  List<MySymbol> xoList;
  double progress;
  List<Color> xBorderGradient;
  List<Color> xBodyGradient;
  List<Color> oBorderGradient;
  List<Color> oBodyGradient;

  XOLayerPainter({
    required this.xoList,
    required this.progress,
    required this.xBorderGradient,
    required this.xBodyGradient,
    required this.oBorderGradient,
    required this.oBodyGradient,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (xoList.isNotEmpty) {
      for (var i = 0; i < xoList.length; i++) {
        xoList[i].drawManager(
            canvas: canvas,
            size: size,
            oBodyGradient: oBodyGradient,
            oBorderGradient: oBorderGradient,
            xBodyGradient: xBodyGradient,
            xBorderGradient: xBorderGradient,
            progress: progress);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
