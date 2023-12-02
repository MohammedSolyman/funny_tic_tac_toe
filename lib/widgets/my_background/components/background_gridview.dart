import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:get/get.dart';

class BackgroundGridView extends StatelessWidget {
  const BackgroundGridView({super.key});

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
