import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';

class Dots extends StatelessWidget {
  const Dots({super.key});

  @override
  Widget build(BuildContext context) {
    ThemingController thCont = Get.find<ThemingController>();

    Paint borderPaint = Paint();
    borderPaint.color = thCont.model.value.myTheme.scoreBorder;
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = 3;

    return Obx(() {
      return Stack(
        children: [
          Text(':',
              style: TextStyle(
                  foreground: borderPaint,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        blurRadius: 5,
                        color: thCont.model.value.myTheme.panelShadowColor,
                        offset: const Offset(3, 3))
                  ])),
          ColorFiltered(
            colorFilter:
                const ColorFilter.mode(Colors.transparent, BlendMode.srcATop),
            child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return ui.Gradient.linear(
                      bounds.topLeft, bounds.bottomRight, [
                    thCont.model.value.myTheme.scoreBody1,
                    thCont.model.value.myTheme.scoreBody2,
                  ]);
                },
                blendMode: BlendMode.srcIn,
                child: const Text(':',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ))),
          ),
        ],
      );
    });
  }
}
