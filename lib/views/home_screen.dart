import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:funny_tic_tac_toe/controllers/home_controller.dart';
import 'package:funny_tic_tac_toe/controllers/transition_controller.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/bottom_block/bottom_block.dart';
import 'package:funny_tic_tac_toe/widgets/home_widgets/middle_block/middle_block.dart';
import 'package:funny_tic_tac_toe/widgets/my_background/my_background.dart';
import 'package:funny_tic_tac_toe/widgets/top_block/top_block.dart';
import 'package:funny_tic_tac_toe/widgets/transition_widgets/transition_block.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    // Show Status bar and hide Navigation bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);

    // show in portrait orientation only
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    Get.put(TransitionController());
    Get.put(HomeController());

    return const Scaffold(
        body: Stack(
      children: [
        MyBackground(),
        TopBlock(),
        IgnorePointer(child: BottomBlock()),
        MiddleBlock(),
        IgnorePointer(child: TransitionBlock())
      ],
    ));
  }
}
