import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/transition_controller.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/stick.dart';
import 'package:get/get.dart';

class TransitionBlock extends StatelessWidget {
  const TransitionBlock({super.key});

  @override
  Widget build(BuildContext context) {
    TransitionController tCont = Get.find<TransitionController>();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomPaint(
      painter: MyPainter(tCont.model.value.sticksList),
      size: Size(width, height),
    );
  }
}

class MyPainter extends CustomPainter {
  List<Stick> sticksList;

  MyPainter(this.sticksList);
  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < sticksList.length; i++) {
      sticksList[i].draw(canvas, size);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
