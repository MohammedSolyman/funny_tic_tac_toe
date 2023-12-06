import 'package:flutter/material.dart';

class ThemingModel {
  bool isLightTheme = true;

  MyTheme myTheme = MyLightTheme();
}

class MyTheme {
  //background colors
  late Color bgColor1;
  late Color bgColor2;
  //borders
  late Color borderColor;
  late double borderWidth;
  late double borderRadius;
  //winning connecting line
  late Color innerWinningLineColor;
  late Color outerWinningLineColor;
  //big x
  late Color bigXborderColor;
  late Color bigXbodyColor;
  //big o
  late Color bigOborderColor;
  late Color bigObodyColor;
}

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
  Color bigObodyColor = Colors.red;

  @override
  Color bigOborderColor = Colors.red.shade300;

  @override
  Color bigXbodyColor = Colors.blue;

  @override
  Color bigXborderColor = Colors.blue.shade300;
}

class MyDarkTheme implements MyTheme {
  @override
  Color bgColor1 = Colors.grey.shade800;

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
  Color bigObodyColor = Colors.red;

  @override
  Color bigOborderColor = Colors.red.shade300;

  @override
  Color bigXbodyColor = Colors.blue;

  @override
  Color bigXborderColor = Colors.blue.shade300;
}
