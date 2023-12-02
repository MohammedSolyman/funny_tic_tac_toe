import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:funny_tic_tac_toe/controllers/theming_controller.dart';
import 'package:funny_tic_tac_toe/controllers/transition_controller.dart';
import 'package:funny_tic_tac_toe/utilities/consts/assets_paths.dart';
import 'package:get/get.dart';

class MiddleBlock extends StatelessWidget {
  const MiddleBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Option1(), Option1(), GoButton()],
      ),
    );
  }
}

class Option1 extends StatelessWidget {
  const Option1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemingController thCont = Get.find<ThemingController>();

    double width = MediaQuery.of(context).size.width;
    //  double height = MediaQuery.of(context).size.height;
    return Obx(() {
      return Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: thCont.model.value.myTheme.bgColor2,
            border: Border.all(
              color: thCont.model.value.myTheme.borderColor,
              width: thCont.model.value.myTheme.borderWidth,
            ),
            borderRadius:
                BorderRadius.circular(thCont.model.value.myTheme.borderRadius)),
        child: SizedBox(
          width: width * 0.5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(AssetsPaths.person),
              const Text('vs.'),
              Image.asset(AssetsPaths.person)
            ],
          ),
        ),
      );
    });
  }
}

class GoButton extends StatelessWidget {
  const GoButton({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController hCont = Get.find<HomeController>();
    TransitionController tCont = Get.find<TransitionController>();

    return ElevatedButton(
        onPressed: () {
          tCont.animateTransitionBlock();
          hCont.goToGame();
        },
        child: const Text('go'));
  }
}
