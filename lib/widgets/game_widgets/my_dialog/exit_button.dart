import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExitButton extends StatelessWidget {
  const ExitButton({super.key});

  @override
  Widget build(BuildContext context) {
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
      onTap: () {},
      child: Stack(
        children: [
          Text(
            'EXIT',
            style: GoogleFonts.creepster(fontSize: 30, foreground: bodyPaint),
          ),
          Text(
            'EXIT',
            style: GoogleFonts.creepster(fontSize: 30, foreground: borderPaint),
          ),
        ],
      ),
    );
  }
}
