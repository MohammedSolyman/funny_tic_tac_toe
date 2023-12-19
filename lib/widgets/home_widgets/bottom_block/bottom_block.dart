import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/bottom_block/bottom_block_painter.dart';

class BottomBlock extends StatelessWidget {
  const BottomBlock({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomPaint(
      painter: BottomBlockPainter(),
      size: Size(width, height),
    );
  }
}
