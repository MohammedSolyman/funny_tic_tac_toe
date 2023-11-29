import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:get/get.dart';

class MyBackground extends StatelessWidget {
  const MyBackground({super.key});

  @override
  Widget build(BuildContext context) {
    // HomeController hCont = Get.find<HomeController>();

    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return const Stack(children: [
      MyGradient(),
      MyGridView(),
    ]);
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hCont = Get.find<HomeController>();

    return GridView.builder(
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
    );
  }
}

class MyGradient extends StatelessWidget {
  const MyGradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemingController thCont = Get.find<ThemingController>();
    HomeController hCont = Get.find<HomeController>();

    return Obx(() {
      return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
              thCont.model.value.myTheme.bgColor2,
              Colors.white,
              thCont.model.value.myTheme.bgColor2,
            ],
                begin: Alignment(0, hCont.model.value.grdientFactorY1),
                end: Alignment(0, hCont.model.value.grdientFactorY2))),
      );
    });
  }
}
