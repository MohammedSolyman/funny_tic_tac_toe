import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/big_o.dart';

class GameModel {
  //grid dimensions
  double gridWidth = 0;
  double gridHeight = 0;

  //grid alignment
  Alignment gridAlignment = const Alignment(4, 0);

  //xo objects
  List xoList = [];

  //cells star points, the upper left corner of each cell is the
  //start point of each cell.
  List<Offset> cellsstarPoints = [];
}
