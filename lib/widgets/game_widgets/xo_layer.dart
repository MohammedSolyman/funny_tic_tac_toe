import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/big_x.dart';
import 'package:get/get.dart';

class XOLayer extends StatelessWidget {
  const XOLayer({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();
    return Obx(() {
      return CustomPaint(
        painter: XOLayerPainter(
            xoList: gCont.model.value.xoList,
            progress: gCont.model.value.progressX),
        size: Size(gCont.model.value.gridWidth, gCont.model.value.gridHeight),
      );
    });
  }
}

class XOLayerPainter extends CustomPainter {
  List<MySymbol> xoList;
  double progress;
  XOLayerPainter({required this.xoList, required this.progress});
  @override
  void paint(Canvas canvas, Size size) {
    if (xoList.isNotEmpty) {
      for (var i = 0; i < xoList.length; i++) {
        xoList[i].draw(canvas, size / 3);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
