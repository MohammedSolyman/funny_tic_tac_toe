import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';

class MyBackground extends StatelessWidget {
  const MyBackground({super.key});

  @override
  Widget build(BuildContext context) {
    ThemingController thCont = Get.put(ThemingController());
    HomeController hCont = Get.put(HomeController());

    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [thCont.model.value.myTheme.bgColor2, Colors.white],
                begin: const Alignment(0, -1),
                end: const Alignment(0, 1))),
      ),
      GridView.builder(
        itemCount: 2000,
        padding: const EdgeInsets.all(0),
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 19,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return hCont.model.value.backgroundList[index];
        },
      ),
    ]);
  }
}
