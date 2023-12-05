import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/models/game_model.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/big_o.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/big_x.dart';
import 'package:get/get.dart';

class GameController extends GetxController with GetTickerProviderStateMixin {
  //this controller is responsible of game screen and its animations
  Rx<GameModel> model = GameModel().obs;
  DimensionsController dCont = Get.find<DimensionsController>();

//game logic///////////////////////////////////////////////////
  void _updateWinningCells(int i1, int i2, int i3) {
    //this function will update the three winning cells.
    model.update((val) {
      val!.winningCells = [i1, i2, i3];
    });
  }

  int getScore(List<String> b) {
    // 1. this function will return the following
    //x wins  => -10
    //o wins  =>  10
    //  tie   =>   0
    //ongoing =>   1
    // 2. this function will update the winning cells as well.

    //Hoorizontal winning
    for (var i = 0; i < 7; i += 3) {
      if (b[i] != '' && b[i] == b[i + 1] && b[i] == b[i + 2]) {
        _updateWinningCells(i, i + 1, i + 2);
        if (b[i] == 'X') {
          return -10;
        } else {
          return 10;
        }
      }
    }

    //Vertical winning
    for (var i = 0; i < 3; i++) {
      if (b[i] != '' && b[i] == b[i + 3] && b[i] == b[i + 6]) {
        _updateWinningCells(i, i + 3, i + 6);
        if (b[i] == 'X') {
          return -10;
        } else {
          return 10;
        }
      }
    }

    //Diagonal winning 1
    if ((b[0] != '' && b[0] == b[4] && b[0] == b[8])) {
      _updateWinningCells(0, 4, 8);

      if (b[4] == 'X') {
        return -10;
      } else {
        return 10;
      }
    }

    //Diagonal winning 2
    if ((b[2] != '' && b[2] == b[4] && b[2] == b[6])) {
      _updateWinningCells(2, 4, 6);

      if (b[4] == 'X') {
        return -10;
      } else {
        return 10;
      }
    }

    if (b.contains('')) {
      return 1;
    } else {
      return 0;
    }
  }

  void xPlay(int index) {
    //if the game is still ongoing, and the index in the grid list
    //is empty:
    //   1. put 'X' int the grid list
    //   2. put 'X' with animation in xo- layer
    if (getScore(model.value.board) == 1) {
      if (model.value.board[index] == '') {
        model.update((val) {
          val!.board[index] = 'X';
        });
        _putX(index);
      }
    }
  }

  void oPlay(int index) {
    //if the game is still ongoing, and the index in the grid list
    //is empty:
    //   1. put 'O' int the grid list
    //   2. put 'O' with animation in xo- layer
    if (getScore(model.value.board) == 1) {
      if (model.value.board[index] == '') {
        model.update((val) {
          val!.board[index] = 'O';
        });
        _putO(index);
      }
    }
  }

  void aiPlay() {
    if (getScore(model.value.board) == 1) {
      List<String> b = model.value.board;
      int bestMoveIndex = -1000;
      int bestScore = -1000;

      for (var i = 0; i < 9; i++) {
        if (b[i] == '') {
          b[i] = 'O';
          int tempScore = miniMax(b, 100, false);
          b[i] = '';
          if (bestScore < tempScore) {
            bestScore = tempScore;
            bestMoveIndex = i;
          }
        }
      }
      model.update((val) {
        val!.board[bestMoveIndex] = 'O';
      });
    }
  }

  int miniMax(List<String> b, int depth, bool isMaximizing) {
    int score = getScore(b);

    if (score != 1) {
      return score;
    } else {
      if (isMaximizing) {
        int bestScore = -1000;
        for (var i = 0; i < 9; i++) {
          if (b[i] == '') {
            b[i] = 'O';
            int tempScore = miniMax(b, ++depth, false);
            b[i] = '';
            if (bestScore < tempScore) {
              bestScore = tempScore;
            }
          }
        }
        return bestScore;
      } else {
        int bestScore = 1000;
        for (var i = 0; i < 9; i++) {
          if (b[i] == '') {
            b[i] = 'X';
            int tempScore = miniMax(b, ++depth, true);
            b[i] = '';
            if (bestScore > tempScore) {
              bestScore = tempScore;
            }
          }
        }
        return bestScore;
      }
    }
  }

  void _toggleXTurn() {
    //this function updates the game turn from x-turn to NOT x-turn,
    //and vice versa.
    model.update((val) {
      val!.isXTurn = !val.isXTurn;
    });
  }

  void play({required bool withAI, required int index}) {
    if (model.value.isXTurn) {
      xPlay(index);
      _toggleXTurn();
    } else {
      if (withAI) {
        aiPlay();
        _toggleXTurn();
      } else {
        oPlay(index);
        _toggleXTurn();
      }
    }
  }

//game dimensions///////////////////////////////////////////////////
  void _initializeGridDimenions() {
    model.update((val) {
      val!.gridHeight = dCont.model.value.height * 0.33;
      val.gridWidth = dCont.model.value.width * 0.5;
    });
  }

  void _initializeCellsStartPoints() {
    double widthThird = model.value.gridWidth / 3;
    double heightThird = model.value.gridHeight / 3;

    Offset s0 = const Offset(0, 0);
    Offset s1 = Offset(widthThird, 0);
    Offset s2 = Offset(widthThird * 2, 0);

    Offset s3 = Offset(0, heightThird);
    Offset s4 = Offset(widthThird, heightThird);
    Offset s5 = Offset(widthThird * 2, heightThird);

    Offset s6 = Offset(0, heightThird * 2);
    Offset s7 = Offset(widthThird, heightThird * 2);
    Offset s8 = Offset(widthThird * 2, heightThird * 2);

    model.update((val) {
      val!.cellsStarPoints = [s0, s1, s2, s3, s4, s5, s6, s7, s8];
    });
  }

  void _initializeCellsCentersPoints() {
    double widthSixth = model.value.gridWidth / 6;
    double heightSixth = model.value.gridHeight / 6;

    Offset s0 = Offset(widthSixth, heightSixth);
    Offset s1 = Offset(widthSixth * 3, heightSixth);
    Offset s2 = Offset(widthSixth * 5, heightSixth);

    Offset s3 = Offset(widthSixth, heightSixth * 3);
    Offset s4 = Offset(widthSixth * 3, heightSixth * 3);
    Offset s5 = Offset(widthSixth * 5, heightSixth * 3);

    Offset s6 = Offset(widthSixth, heightSixth * 5);
    Offset s7 = Offset(widthSixth * 3, heightSixth * 5);
    Offset s8 = Offset(widthSixth * 5, heightSixth * 5);

    model.update((val) {
      val!.cellsCenterPoints = [s0, s1, s2, s3, s4, s5, s6, s7, s8];
    });
  }

//game animation///////////////////////////////////////////////////
  void _initializeGridAnimation() {
    // controler
    model.value.gridAnimationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    //curve
    CurvedAnimation curvedAnimation = CurvedAnimation(
        parent: model.value.gridAnimationController, curve: Curves.elasticOut);

    // tween
    Tween<Alignment> tween = Tween<Alignment>(
        begin: model.value.gridAlignment, end: const Alignment(0, 0));

    //animation
    Animation animation = tween.animate(curvedAnimation);

    //updating values
    model.value.gridAnimationController.addListener(() {
      model.update((val) {
        val!.gridAlignment = animation.value;
      });
    });
  }

  void _initializeSymbolAnimation() {
    // controler
    model.value.symbolAnimation =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    // tween
    Tween<double> tween = Tween<double>(begin: 0, end: 1);

    //animation
    Animation animation = tween.animate(model.value.symbolAnimation);

    //updating values
    model.value.symbolAnimation.addListener(() {
      model.update((val) {
        val!.progress = animation.value;
        for (var symbol in val.xoList) {
          symbol.updateProgress();
        }
        print('${val.progress}');
      });
    });
    //updating status
    model.value.symbolAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        model.value.symbolAnimation.reset();
      }
    });
  }

  Future<void> _animateGameGrid() async {
    await Future.delayed(const Duration(seconds: 3));
    model.value.gridAnimationController.forward();
  }

  void _putO(int index) {
    //this function will put 'O' symbol on the xo layer
    //with animation
    Offset position = model.value.cellsStarPoints[index];
    BigO o = BigO(position);
    model.update((val) {
      val!.xoList.add(o);
    });
    //firing animation
    model.value.symbolAnimation.forward();
  }

  void _putX(int index) {
    //this function will put 'X' symbol on the xo layer
    //with animation
    Offset position = model.value.cellsStarPoints[index];
    BigX x = BigX(position: position);

    model.update((val) {
      val!.xoList.add(x);
    });

    //firing animation
    model.value.symbolAnimation.forward();
  }

  @override
  void onInit() {
    super.onInit();
    _initializeGridDimenions();
    _initializeCellsStartPoints();
    _initializeCellsCentersPoints();
    _initializeGridAnimation();
    _initializeSymbolAnimation();
    _animateGameGrid();
  }

  @override
  void onClose() {
    super.onClose();
    // model.value.oAnimationController.dispose();
    model.value.symbolAnimation.dispose();
    model.value.gridAnimationController.dispose();
  }
}
