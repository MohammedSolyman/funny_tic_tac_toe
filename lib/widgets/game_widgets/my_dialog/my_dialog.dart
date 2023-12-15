import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_dialog/continue_button.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_dialog/dialog_box.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_dialog/home_button.dart';
import 'package:get/get.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    double heightWidth = MediaQuery.of(context).size.height / 100;
    GameController gCont = Get.find<GameController>();
    return Obx(() {
      return Align(
        alignment: gCont.model.value.dialogAlignment,
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.black, width: 10)),
          height: gCont.model.value.dialogHeight,
          width: gCont.model.value.dialogWidth,
          child: Stack(
            children: [
              const DialogBox(),
              Padding(
                padding: EdgeInsets.only(top: heightWidth * 20),
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
