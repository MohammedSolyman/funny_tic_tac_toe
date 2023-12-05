import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_symbol.dart';

class GameModel {
  //1. dimensions/////////////////////////////////////////////////
  //grid dimensions
  double gridWidth = 0;
  double gridHeight = 0;

  //grid alignment
  Alignment gridAlignment = const Alignment(4, 0);

  //grid points
  GridPoints gridPoints = GridPoints();

  //cells center points: the center of each cell.
  List<Offset> cellsCenterPoints = [];

  //2. game logic////////////////////////////////////////////////////
  //xo board, used in logic
  List<String> board = ['', '', '', '', '', '', '', '', ''];

  //the three winning cells
  List<int> winningCells = [];

  bool isXTurn = true;

  //3. animation ////////////////////////////////////////////////////

  //xo objects in xo layer,used in animation
  List<MySymbol> xoList = [];

  //grid animation
  late AnimationController gridAnimationController;

  //my symbol (big x and big o) animation
  late AnimationController symbolAnimation;
  double progress = 0;

  //big x animation
  //late AnimationController oAnimationController;
  double progressO = 0;
}

class GridPoints {
  //cells start points list: the upper left corner of each cell is the
  //start point of this cell.
  List<Offset> startPoints = [];

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
