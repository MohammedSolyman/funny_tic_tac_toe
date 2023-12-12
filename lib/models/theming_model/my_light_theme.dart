import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/models/theming_model/my_theming.dart';

class MyLightTheme implements MyTheme {
  @override
  Color bgColor1 = Colors.grey;

  @override
  Color bgColor2 = Colors.purple.shade300;

  @override
  Color borderColor = Colors.purple.shade800;

  @override
  double borderRadius = 15;

  @override
  double borderWidth = 4;

  @override
  Color innerWinningLineColor = Colors.orange;

  @override
  Color outerWinningLineColor = Colors.red;

  @override
  Color bigObodyColor = Colors.red.shade300;

  @override
  Color bigOborderColor = Colors.red;

  @override
  Color bigXbodyColor = Colors.blue.shade300;

  @override
  Color bigXborderColor = Colors.blue;

  @override
  Color lightBackgroundGradient = Colors.white;

  @override
  Color oPlyaerBody1 = Colors.yellow;

  @override
  Color oPlyaerBody2 = Colors.deepOrange;

  @override
  Color oPlyaerBorder = Colors.red;

  @override
  Color scoreBody1 = Colors.blueGrey;

  @override
  Color scoreBody2 = Colors.grey;

  @override
  Color scoreBorder = Colors.black;

  @override
  Color xPlyaerBody1 = Colors.blueGrey;

  @override
  Color xPlyaerBody2 = Colors.blue;

  @override
  Color xPlyaerBorder = Colors.deepPurple;
  //7. panel - panel shadow
  @override
  Color panelShadowColor = Colors.black;
}
