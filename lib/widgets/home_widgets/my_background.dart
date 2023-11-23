import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';

class MyBackground extends StatelessWidget {
  const MyBackground({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.grey, Colors.black])),
      ),
      GridView.builder(
        padding: const EdgeInsets.all(0),
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 25,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return CustomPaint(
            painter: MyTopPainter(),
            size: Size(width, height),
          );
        },
      ),
    ]);
  }
}

class MyTopPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    ThemingController thCon = Get.put(ThemingController());

    //dimensions
    double deviceWidth = size.width;
    double deviceHeight = size.height;
    Offset center = Offset(deviceWidth * 0.5, deviceHeight * 0.5);
    //path
    Rect rect1 = Rect.fromCenter(
        center: center, width: deviceWidth, height: deviceHeight);
    Rect rect2 = Rect.fromCircle(center: center, radius: deviceWidth * 0.45);
    Rect rect3 = Rect.fromCircle(center: center, radius: deviceWidth * 0.25);
    Path path = Path();
    path.fillType = PathFillType.evenOdd;
    path.addRect(rect1);
    path.addOval(rect2);
    path.addOval(rect3);

    //paint
    Paint paint = Paint();
    paint.color = thCon.model.value.myTheme.bgColor1;
    paint.style = PaintingStyle.fill;

    //draw

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
