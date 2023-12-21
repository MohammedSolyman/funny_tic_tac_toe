import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'dart:ui' as ui;
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';

class XPlayer extends StatelessWidget {
  const XPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();
    ThemingController thCont = Get.find<ThemingController>();

    return Expanded(
      flex: 3,
      child: Obx(() {
        return Center(
          child: Stack(
            children: [
              //border
              ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return ui.Gradient.linear(
                        bounds.topLeft,
                        bounds.bottomRight,
                        gCont.model.value.isXTurn
                            ? thCont.model.value.myTheme.xBorderGradient
                            : thCont
                                .model.value.myTheme.blackWhieBorderGradient);
                  },
                  blendMode: BlendMode.srcIn,
                  child: AutoSizeText('X player',
                      maxFontSize: 30,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                blurRadius: 5,
                                color: thCont.model.value.myTheme.shadowColor,
                                offset: const Offset(2, 2))
                          ]))),

              //body
              ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return ui.Gradient.linear(
                        bounds.topLeft,
                        bounds.bottomRight,
                        gCont.model.value.isXTurn
                            ? thCont.model.value.myTheme.xBodyGradient
                            : thCont.model.value.myTheme.blackWhieBodyGradient);
                  },
                  blendMode: BlendMode.srcIn,
                  child: const AutoSizeText('X player',
                      maxFontSize: 30,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))),
            ],
          ),
        );
      }),
    );
  }
}
