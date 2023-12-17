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
            oBodyColor: thCont.model.value.myTheme.bigObodyColor,
            oBorderColor: thCont.model.value.myTheme.bigOborderColor,
            xBodyColor: thCont.model.value.myTheme.bigXbodyColor,
            xBorderColor: thCont.model.value.myTheme.bigXborderColor,
            progress: gCont.model.value.symbolProgress),
        size: Size(gCont.model.value.gridWidth, gCont.model.value.gridHeight),
      );
    });
  }
}

class XOLayerPainter extends CustomPainter {
  List<MySymbol> xoList;
  double progress;
  Color xBorderColor;
  Color xBodyColor;
  Color oBorderColor;
  Color oBodyColor;

  XOLayerPainter({
    required this.xoList,
    required this.progress,
    required this.xBodyColor,
    required this.xBorderColor,
    required this.oBodyColor,
    required this.oBorderColor,
  });
  @override
  void paint(Canvas canvas, Size size) {
    if (xoList.isNotEmpty) {
      for (var i = 0; i < xoList.length; i++) {
        xoList[i].drawManager(
            canvas: canvas,
            size: size,
            xBorderColor: xBorderColor,
            xBodyColor: xBodyColor,
            oBorderColor: oBorderColor,
            oBodyColor: oBodyColor,
            progress: progress);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
