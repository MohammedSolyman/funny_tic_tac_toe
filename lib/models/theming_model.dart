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
}
