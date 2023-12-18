import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:funny_tic_tac_toe/controllers/transition_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hCont = Get.find<HomeController>();
    TransitionController tCont = Get.find<TransitionController>();

    //border paint
    Paint borderPaint = Paint();
    borderPaint.color = Colors.black;
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = 3;

    //body paint
    Paint bodyPaint = Paint();
    bodyPaint.shader = const LinearGradient(colors: [Colors.red, Colors.yellow])
        .createShader(
            Rect.fromCircle(center: const Offset(20, 20), radius: 100));
    bodyPaint.style = PaintingStyle.fill;

    return GestureDetector(
      onTap: () {
        tCont.fireTransitionAnimation();
        hCont.goToGame();
      },
      child: Stack(
        children: [
          Text(
            'PLAY',
            style: GoogleFonts.creepster(fontSize: 45, foreground: bodyPaint),
          ),
          Text(
            'PLAY',
            style: GoogleFonts.creepster(fontSize: 45, foreground: borderPaint),
          ),
        ],
      ),
    );
  }
}
