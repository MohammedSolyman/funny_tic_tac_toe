import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/widgets/my_background/components/background_gridview.dart';
import 'package:funny_tic_tac_toe/widgets/my_background/components/my_gradient.dart';

class MyBackground extends StatelessWidget {
  const MyBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(children: [
      MyGradient(),
      BackgroundGridView(),
    ]);
  }
}
