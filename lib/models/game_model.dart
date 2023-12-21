import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/xo_layer/my_symbol.dart';

class GameModel {
  //1. grid ////////////////////////////////////////////////////////
  double gridWidth = 0;
  double gridHeight = 0;

  Alignment gridAlignmentStart = const Alignment(4, 0.2);
  Alignment gridAlignmentEnd = const Alignment(0, 0.2);
  Alignment gridAlignment = const Alignment(4, 0.2);

  GridPoints gridPoints = GridPoints();
  final int gridAniamteDuration = 3000;
  final int gridAniamteAfterPeriod =
      4000; //period to be waited before animating the grid.
  late AnimationController gridAnimationController;

  // 2. panel////////////////////////////////////////////////////
  double panelWidth = 0;
  double panelHeight = 0;
  int xScore = 0;
  int oScore = 0;

  Alignment panelAlignmentStart = const Alignment(4, -0.4);
  Alignment panelAlignmentEnd = const Alignment(0, -0.4);
  Alignment panelAlignment = const Alignment(4, -0.4);

  final int panelAniamteDuration = 3000;
  final int panelAniamteAfterPeriod =
      4000; //period to be waited before animating the panel.
  late AnimationController panelAnimationController;

  //3. moving dash //////////////////////////////////////////////////////////////
  double movingDashFraction = 0;
  final int movingDashAniamteDuration = 500; //millisec
  late AnimationController movingDashAnimationController;

  //4. game logic////////////////////////////////////////////////////
  List<String> board = ['', '', '', '', '', '', '', '', ''];
  bool isXTurn = true;

  //5. xo-layer////////////////////////////////////////////////////
  List<MySymbol> xoList = []; //xo objects in xo layer,used in animation
  late AnimationController symbolAnimationController;
  double symbolProgress = 0;
  int symbolAnimationDuration = 500; //milisec

  double symbolProgressBegin = 0;
  double symbolProgressEnd = 1 / 3;

  //6. winning line layer////////////////////////////////////////////////////
  List<int> winningCells = []; //the three winning cells
  List<Offset> winningPoints = []; //the two points to be connedted when winning
  late AnimationController winningAnimationController;
  double winnginLineProgress = 0;
  final int winningLineDuration = 2000; //milisec

  //7. dialog////////////////////////////////////////////////////
  double dialogWidth = 0;
  double dialogHeight = 0;

  Alignment dialogAlignmentStart = const Alignment(-1, 2.2);
  Alignment dialogAlignmentEnd = const Alignment(-1, 0);
  Alignment dialogAlignment = const Alignment(-1, 2.2);

  final int dialogAniamteDuration = 1000; //milisec
  late AnimationController dialogAnimationController;

  String resultText = '';
  //8. barrier ////////////////////////////////////////////////
  bool showBarrier = false;
}

class GridPoints {
  //centers of grid cells.
  List<Offset> cellsCenters = [];

  //cells corners points:
  Offset c1 = Offset.zero;
  Offset c2 = Offset.zero;
  Offset c3 = Offset.zero;
  Offset c4 = Offset.zero;

  //cells vertical points:
  Offset v1 = Offset.zero;
  Offset v2 = Offset.zero;
  Offset v3 = Offset.zero;
  Offset v4 = Offset.zero;
  Offset v5 = Offset.zero;
  Offset v6 = Offset.zero;

  //cells horizontal points:
  Offset h1 = Offset.zero;
  Offset h2 = Offset.zero;
  Offset h3 = Offset.zero;
  Offset h4 = Offset.zero;
  Offset h5 = Offset.zero;
  Offset h6 = Offset.zero;
}
