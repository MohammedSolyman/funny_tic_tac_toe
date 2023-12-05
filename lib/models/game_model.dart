import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/my_symbol.dart';

class GameModel {
  //1. dimensions/////////////////////////////////////////////////
  //grid dimensions
  double gridWidth = 0;
  double gridHeight = 0;

  //grid alignment
  Alignment gridAlignment = const Alignment(4, 0);

  //cells start points: the upper left corner of each cell is the
  //start point of this cell.
  List<Offset> cellsStarPoints = [];

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
