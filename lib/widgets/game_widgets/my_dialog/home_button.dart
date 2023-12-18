import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    GameController gCont = Get.find<GameController>();
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
      onTap: () async {
        await gCont.homeFunction();
      },
      child: Stack(
        children: [
          Text(
            'HOME',
            style: GoogleFonts.creepster(fontSize: 30, foreground: bodyPaint),
          ),
          Text(
            'HOME',
            style: GoogleFonts.creepster(fontSize: 30, foreground: borderPaint),
          ),
        ],
      ),
    );
  }
}
