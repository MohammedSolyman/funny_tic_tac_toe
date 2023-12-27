import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/models/theming_model/my_theming.dart';

// class MyDarkTheme implements MyTheme {
//   //1. top bottom gradient = score in panel  /////////////////////
//   //  = options in home page = dialog background//////////////////
//   @override
//   List<Color> primaryGradient = [
//     Colors.black,
//     Colors.grey.shade900,
//   ];

//   //2. background gradient /////////////////////////////////////
//   @override
//   List<Color> backgroundGradient = [
//     Colors.black,
//     Colors.grey.shade700,
//     Colors.black,
//   ];
//   @override
//   Color backgroundColor = const Color.fromARGB(255, 34, 33, 33);

//   //3. borders /////////////////////////////////////////////////
//   @override
//   Color borderColor = Colors.purple.shade800;
//   @override
//   double borderRadius = 15;
//   @override
//   double borderWidth = 4;

//   //4. shadow color ////////////////////////////////////////////
//   @override
//   Color shadowColor = Colors.white;

//   //5. big x = x-player in panel /////////////////////////////////
//   @override
//   List<Color> xBorderGradient = [
//     const Color.fromARGB(255, 9, 48, 108),
//     const Color.fromARGB(255, 14, 81, 181),
//   ];
//   @override
//   List<Color> xBodyGradient = [
//     Colors.cyan.shade900,
//     Colors.cyan.shade400,
//   ];

//   //6. big o = o-player in panel////////////////////////////
//   @override
//   List<Color> oBorderGradient = [
//     Colors.red.shade900,
//     Colors.red,
//   ];
//   @override
//   List<Color> oBodyGradient = [
//     Colors.red,
//     Colors.orange,
//   ];

//   //7. black-white gradient////////////////////////////////////////
//   @override
//   List<Color> blackWhieBorderGradient = [
//     Colors.black,
//     Colors.black,
//   ];
//   @override
//   List<Color> blackWhieBodyGradient = [
//     Colors.grey.shade800,
//     Colors.grey.shade600,
//   ];

//   //8 . winning connecting line = moving dash///////////////////
//   @override
//   Color innerLineColor = Colors.white;
//   @override
//   Color outerLineColor = Colors.grey;

//   // //9. panel - score /////////////////////////////////////////
//   // @override
//   // @override
//   // List<Color> scoreGradient = [Colors.blueGrey, Colors.grey];

//   // @override
//   // Color scoreBorder = Colors.black;

//   //10 dialog

//   @override
//   Color textColor = Colors.yellow;
//   @override
//   Color bubbleBodyColor = Colors.red;
//   @override
//   Color bubbleBorderColor = Colors.black;

//   //10 play button color
//   @override
//   Color playButtonColor = Colors.yellow;
// }

class MyDarkTheme implements MyTheme {
  //1. top bottom gradient = score in panel  /////////////////////
  //  = options in home page = dialog background//////////////////
  @override
  List<Color> primaryGradient = [
    MyDarkBlue.mcgpalette0Accent.shade100,
    MyDarkBlue.mcgpalette0Accent.shade200,

    // MyDarkBlue.mcgpalette0.shade400,
    // MyDarkBlue.mcgpalette0.shade500,
  ];

  //2. background /////////////////////////////////////////////////
  @override
  List<Color> backgroundGradient = [
    MyDarkBlue.mcgpalette0.shade200,
    MyDarkBlue.mcgpalette0.shade50,
    MyDarkBlue.mcgpalette0.shade200,
  ];
  @override
  Color backgroundColor = MyDarkBlue.mcgpalette0.shade300;

  //3. borders /////////////////////////////////////////////////
  @override
  Color borderColor = MyDarkBlue.mcgpalette0.shade900;
  @override
  double borderRadius = 15;
  @override
  double borderWidth = 4;

  //4. shadow color ////////////////////////////////////////////
  @override
  Color shadowColor = MyDarkBlue.mcgpalette0.shade900;

  //5. big x = x-player in panel /////////////////////////////////
  @override
  List<Color> xBorderGradient = [
    MyDarkGreen.mcgpalette0.shade800,
    MyDarkGreen.mcgpalette0.shade900,
  ];
  @override
  List<Color> xBodyGradient = [
    MyDarkGreen.mcgpalette0.shade400,
    MyDarkGreen.mcgpalette0.shade500,
  ];

  //6. big o = o-player in panel////////////////////////////
  @override
  List<Color> oBorderGradient = [
    MyDarkPink.mcgpalette0.shade800,
    MyDarkPink.mcgpalette0.shade900,
  ];

  @override
  List<Color> oBodyGradient = [
    MyDarkPink.mcgpalette0.shade400,
    MyDarkPink.mcgpalette0.shade500,
  ];

  //7. black-white gradient////////////////////////////////////////
  @override
  List<Color> blackWhieBorderGradient = [
    Colors.black,
    Colors.black,
  ];
  @override
  List<Color> blackWhieBodyGradient = [
    Colors.grey.shade800,
    Colors.grey.shade600,
  ];
  //8 . winning connecting line = moving dash///////////////////
  @override
  Color innerLineColor = Colors.redAccent.shade200;
  @override
  Color outerLineColor = Colors.red.shade800;

  //10 dialog

  @override
  Color textColor = MyDarkPink.mcgpalette0Accent.shade700;

  @override
  Color bubbleBodyColor = Colors.red;

  @override
  Color bubbleBorderColor = Colors.red;

  //10 play button color
  @override
  Color playButtonColor = MyDarkGreen.mcgpalette0.shade700;
}

// class MyDarkGreen {
//   static const MaterialColor mcgpalette0 =
//       MaterialColor(_mcgpalette0PrimaryValue, <int, Color>{
//     50: Color(0xFFE5E5E4),
//     100: Color(0xFFBDBEBC),
//     200: Color(0xFF92938F),
//     300: Color(0xFF666862),
//     400: Color(0xFF454740),
//     500: Color(_mcgpalette0PrimaryValue),
//     600: Color(0xFF20231A),
//     700: Color(0xFF1B1D16),
//     800: Color(0xFF161712),
//     900: Color(0xFF0D0E0A),
//   });
//   static const int _mcgpalette0PrimaryValue = 0xFF24271E;

//   static const MaterialColor mcgpalette0Accent =
//       MaterialColor(_mcgpalette0AccentValue, <int, Color>{
//     100: Color(0xFFFFFF53),
//     200: Color(_mcgpalette0AccentValue),
//     400: Color(0xFFECEC00),
//     700: Color(0xFFD3D300),
//   });
//   static const int _mcgpalette0AccentValue = 0xFFFFFF20;
// }

// class MyDarkBrown {
//   static const MaterialColor mcgpalette0 =
//       MaterialColor(_mcgpalette0PrimaryValue, <int, Color>{
//     50: Color(0xFFE5E5E4),
//     100: Color(0xFFBFBEBC),
//     200: Color(0xFF959390),
//     300: Color(0xFF6A6763),
//     400: Color(0xFF4A4741),
//     500: Color(_mcgpalette0PrimaryValue),
//     600: Color(0xFF25221C),
//     700: Color(0xFF1F1C18),
//     800: Color(0xFF191713),
//     900: Color(0xFF0F0D0B),
//   });
//   static const int _mcgpalette0PrimaryValue = 0xFF2A2620;

//   static const MaterialColor mcgpalette0Accent =
//       MaterialColor(_mcgpalette0AccentValue, <int, Color>{
//     100: Color(0xFFFFAA55),
//     200: Color(_mcgpalette0AccentValue),
//     400: Color(0xFFEE7700),
//     700: Color(0xFFD46A00),
//   });
//   static const int _mcgpalette0AccentValue = 0xFFFF9022;
// }

// class MyDarkPink {
//   static const MaterialColor mcgpalette0 =
//       MaterialColor(_mcgpalette0PrimaryValue, <int, Color>{
//     50: Color(0xFFE4E4E4),
//     100: Color(0xFFBDBABC),
//     200: Color(0xFF918D8F),
//     300: Color(0xFF645F62),
//     400: Color(0xFF433C40),
//     500: Color(_mcgpalette0PrimaryValue),
//     600: Color(0xFF1E171A),
//     700: Color(0xFF191316),
//     800: Color(0xFF140F12),
//     900: Color(0xFF0C080A),
//   });
//   static const int _mcgpalette0PrimaryValue = 0xFF221A1E;

//   static const MaterialColor mcgpalette0Accent =
//       MaterialColor(_mcgpalette0AccentValue, <int, Color>{
//     100: Color(0xFFFF52A8),
//     200: Color(_mcgpalette0AccentValue),
//     400: Color(0xFFEB0075),
//     700: Color(0xFFD10069),
//   });
//   static const int _mcgpalette0AccentValue = 0xFFFF1F8F;
// }

// class MyDarkBlue {
//   static const MaterialColor mcgpalette0 =
//       MaterialColor(_mcgpalette0PrimaryValue, <int, Color>{
//     50: Color(0xFFE2E2E2),
//     100: Color(0xFFB6B6B7),
//     200: Color(0xFF858587),
//     300: Color(0xFF545456),
//     400: Color(0xFF303032),
//     500: Color(_mcgpalette0PrimaryValue),
//     600: Color(0xFF0A0A0C),
//     700: Color(0xFF08080A),
//     800: Color(0xFF060608),
//     900: Color(0xFF030304),
//   });
//   static const int _mcgpalette0PrimaryValue = 0xFF0B0B0E;

//   static const MaterialColor mcgpalette0Accent =
//       MaterialColor(_mcgpalette0AccentValue, <int, Color>{
//     100: Color(0xFFA6A6A6),
//     200: Color(_mcgpalette0AccentValue),
//     400: Color(0xFF737373),
//     700: Color(0xFF666666),
//   });
//   static const int _mcgpalette0AccentValue = 0xFF8C8C8C;
// }

class MyDarkGreen {
  static const MaterialColor mcgpalette0 =
      MaterialColor(_mcgpalette0PrimaryValue, <int, Color>{
    50: Color(0xFFE5E7E2),
    100: Color(0xFFBFC3B8),
    200: Color(0xFF949B88),
    300: Color(0xFF697258),
    400: Color(0xFF495435),
    500: Color(_mcgpalette0PrimaryValue),
    600: Color(0xFF24300F),
    700: Color(0xFF1F290C),
    800: Color(0xFF19220A),
    900: Color(0xFF0F1605),
  });
  static const int _mcgpalette0PrimaryValue = 0xFF293611;

  static const MaterialColor mcgpalette0Accent =
      MaterialColor(_mcgpalette0AccentValue, <int, Color>{
    100: Color(0xFFA9FF57),
    200: Color(_mcgpalette0AccentValue),
    400: Color(0xFF76F000),
    700: Color(0xFF69D600),
  });
  static const int _mcgpalette0AccentValue = 0xFF8FFF24;
}

class MyDarkBrown {
  static const MaterialColor mcgpalette0 =
      MaterialColor(_mcgpalette0PrimaryValue, <int, Color>{
    50: Color(0xFFE7E6E3),
    100: Color(0xFFC4C0B8),
    200: Color(0xFF9D9689),
    300: Color(0xFF756C5A),
    400: Color(0xFF584D36),
    500: Color(_mcgpalette0PrimaryValue),
    600: Color(0xFF342811),
    700: Color(0xFF2C220E),
    800: Color(0xFF251C0B),
    900: Color(0xFF181106),
  });
  static const int _mcgpalette0PrimaryValue = 0xFF3A2D13;

  static const MaterialColor mcgpalette0Accent =
      MaterialColor(_mcgpalette0AccentValue, <int, Color>{
    100: Color(0xFFFFAB59),
    200: Color(_mcgpalette0AccentValue),
    400: Color(0xFFF27700),
    700: Color(0xFFD86A00),
  });
  static const int _mcgpalette0AccentValue = 0xFFFF9126;
}

class MyDarkPink {
  static const MaterialColor mcgpalette0 =
      MaterialColor(_mcgpalette0PrimaryValue, <int, Color>{
    50: Color(0xFFE6E2E4),
    100: Color(0xFFC1B7BC),
    200: Color(0xFF978790),
    300: Color(0xFF6D5763),
    400: Color(0xFF4E3341),
    500: Color(_mcgpalette0PrimaryValue),
    600: Color(0xFF2A0D1C),
    700: Color(0xFF230B18),
    800: Color(0xFF1D0813),
    900: Color(0xFF12040B),
  });
  static const int _mcgpalette0PrimaryValue = 0xFF2F0F20;

  static const MaterialColor mcgpalette0Accent =
      MaterialColor(_mcgpalette0AccentValue, <int, Color>{
    100: Color(0xFFFF53A9),
    200: Color(_mcgpalette0AccentValue),
    400: Color(0xFFEC0076),
    700: Color(0xFFD30069),
  });
  static const int _mcgpalette0AccentValue = 0xFFFF2090;
}

class MyDarkBlue {
  static const MaterialColor mcgpalette0 =
      MaterialColor(_mcgpalette0PrimaryValue, <int, Color>{
    50: Color(0xFFE2E2E2),
    100: Color(0xFFB6B6B7),
    200: Color(0xFF858587),
    300: Color(0xFF545456),
    400: Color(0xFF303032),
    500: Color(_mcgpalette0PrimaryValue),
    600: Color(0xFF0A0A0C),
    700: Color(0xFF08080A),
    800: Color(0xFF060608),
    900: Color(0xFF030304),
  });
  static const int _mcgpalette0PrimaryValue = 0xFF0B0B0E;

  static const MaterialColor mcgpalette0Accent =
      MaterialColor(_mcgpalette0AccentValue, <int, Color>{
    100: Color(0xFFA6A6A6),
    200: Color(_mcgpalette0AccentValue),
    400: Color(0xFF737373),
    700: Color(0xFF666666),
  });
  static const int _mcgpalette0AccentValue = 0xFF8C8C8C;
}
