import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_dialog/barrier.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_dialog/continue_button.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_dialog/dialog_box.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_dialog/exit_button.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    double heightWidth = MediaQuery.of(context).size.height / 100;
    return Stack(
      children: [
        const Barrier(),
        const DialogBox(),
        Padding(
          padding: EdgeInsets.only(top: heightWidth * 25),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContinueButton(),
              SizedBox(width: 15),
              ExitButton(),
            ],
          ),
        )
      ],
    );
  }
}
