import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'dart:ui' as ui;
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();
    ThemingController thCont = Get.find<ThemingController>();

    Paint borderPaint = Paint();
    borderPaint.color = thCont.model.value.myTheme.scoreBorder;
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = 3;

    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Obx(() {
          return Center(
            child: Stack(
              children: [
                AutoSizeText(
                    ' ${gCont.model.value.xScore.toString()}:${gCont.model.value.oScore.toString()}',
                    maxLines: 1,
                    style: TextStyle(
                        foreground: borderPaint,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                              blurRadius: 5,
                              color: thCont.model.value.myTheme.shadowColor,
                              offset: const Offset(2, 2))
                        ])),
                ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                      Colors.transparent, BlendMode.srcATop),
                  child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return ui.Gradient.linear(
                            bounds.topLeft, bounds.bottomRight, [
                          thCont.model.value.myTheme.scoreBody1,
                          thCont.model.value.myTheme.scoreBody2,
                        ]);
                      },
                      blendMode: BlendMode.srcIn,
                      child: AutoSizeText(
                          ' ${gCont.model.value.xScore.toString()}:${gCont.model.value.oScore.toString()}',
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ))),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
