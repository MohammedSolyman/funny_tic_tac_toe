import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'dart:ui' as ui;
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';

class OPlayer extends StatelessWidget {
  const OPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();
    ThemingController thCont = Get.find<ThemingController>();

    return Expanded(
      flex: 3,
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.blue, width: 3)),
        child: Obx(() {
          Paint borderPaint = Paint();
          borderPaint.color = gCont.model.value.isXTurn
              ? Colors.grey.shade700
              : thCont.model.value.myTheme.oPlyaerBorder;
          borderPaint.style = PaintingStyle.stroke;
          borderPaint.strokeWidth = 3;

          return Stack(
            children: [
              //border
              Text('O player',
                  style: TextStyle(
                      foreground: borderPaint,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                            blurRadius: 5,
                            color: thCont.model.value.myTheme.panelShadowColor,
                            offset: const Offset(2, 2))
                      ])),

              //body
              ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return ui.Gradient.linear(
                        bounds.topLeft,
                        bounds.bottomRight,
                        gCont.model.value.isXTurn
                            ? [
                                Colors.grey.shade300,
                                Colors.grey.shade600,
                              ]
                            : [
                                thCont.model.value.myTheme.oPlyaerBody1,
                                thCont.model.value.myTheme.oPlyaerBody2,
                              ]);
                  },
                  blendMode: BlendMode.srcIn,
                  child: const Text('O player',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))),
            ],
          );
        }),
      ),
    );
  }
}
