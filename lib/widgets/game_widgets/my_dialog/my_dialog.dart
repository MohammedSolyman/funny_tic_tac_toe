import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_dialog/continue_button.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_dialog/dialog_box.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_dialog/home_button.dart';
import 'package:get/get.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    DimensionsController dCont = Get.find<DimensionsController>();

    double height = dCont.model.value.height / 100;
    GameController gCont = Get.find<GameController>();
    return Obx(() {
      return Align(
        alignment: gCont.model.value.dialogAlignment,
        child: SizedBox(
          height: gCont.model.value.dialogHeight,
          width: gCont.model.value.dialogWidth,
          child: Stack(
            children: [
              const DialogBox(),
              Padding(
                padding: EdgeInsets.only(top: height * 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContinueButton(),
                    SizedBox(width: 15),
                    HomeButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
