import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:funny_tic_tac_toe/controllers/game_controller.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/game_gridview.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_dialog/barrier.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_dialog/my_dialog.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/panel/panel.dart';
import 'package:funny_tic_tac_toe/widgets/my_background/my_background.dart';
import 'package:funny_tic_tac_toe/widgets/my_banner_add/my_banner_add.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/transition_block.dart';
import 'package:get/get.dart';
import 'package:funny_tic_tac_toe/widgets/top_block/top_block.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  void initState() {
    super.initState();

    // Show Status bar and hide Navigation bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    // show in portrait orientation only
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    Get.put(GameController());
    return const Scaffold(
      body: Center(
          child: Stack(
        children: [
          MyBackground(),
          TopBlock(),
          Panel(),
          GameGridView(),
          MyBannerAd(),
          Barrier(),
          MyDialog(),
          IgnorePointer(child: TransitionBlock())
        ],
      )),
    );
  }
}
