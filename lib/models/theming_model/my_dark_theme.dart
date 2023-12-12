import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/models/theming_model/my_theming.dart';

class MyDarkTheme implements MyTheme {
  @override
  Color bgColor1 = const Color.fromARGB(255, 34, 33, 33);

  @override
  Color bgColor2 = Colors.black;

  @override
  Color borderColor = Colors.purple.shade800;
  @override
  double borderRadius = 15;

  @override
  double borderWidth = 4;

  @override
  Color innerWinningLineColor = Colors.white;

  @override
  Color outerWinningLineColor = Colors.grey;
  @override
  Color bigObodyColor = Colors.red.shade300;

  @override
  Color bigOborderColor = Colors.red;

  @override
  Color bigXbodyColor = Colors.blue.shade300;

  @override
  Color bigXborderColor = Colors.blue;

  @override
  Color lightBackgroundGradient = Colors.grey.shade700;

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
  Color panelShadowColor = Colors.white;
}