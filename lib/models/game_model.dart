import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/big_x.dart';

class GameModel {
  //grid dimensions
  double gridWidth = 0;
  double gridHeight = 0;

  //grid alignment
  Alignment gridAlignment = const Alignment(4, 0);

  //xo objects
  List<MySymbol> xoList = [];

  //cells start points: the upper left corner of each cell is the
  //start point of this cell.
  List<Offset> cellsStarPoints = [];

  //cells center points: the center of each cell.
  List<Offset> cellsCenterPoints = [];

  //grid animation
  late AnimationController gridAnimationController;

  //big x animation
  late AnimationController xAnimationController;
  double progressX = 0;

  //big x animation
  //late AnimationController oAnimationController;
  double progressO = 0;
}
