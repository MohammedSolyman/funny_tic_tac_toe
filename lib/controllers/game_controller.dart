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
    //1. if the game is still ongoing, and the index in the grid list
    //is empty:
    //   1. put 'X' int the board list
    //   2. put 'X' with animation in xo-layer
    if (getScore(model.value.board) == 1) {
      if (model.value.board[index] == '') {
        model.update((val) {
          val!.board[index] = 'X';
        });
        _fireXAnimation(index);

        //2. check if someone won
        checkWinning();
      }
    }
  }

  void checkWinning() {
    if (getScore(model.value.board) == 10 ||
        getScore(model.value.board) == -10) {
      _fireWinningConnection();
    }
  }

  void oPlay(int index) {
    //if the game is still ongoing, and the index in the grid list
    //is empty:
    //   1. put 'O' int the board list
    //   2. put 'O' with animation in xo- layer
    if (getScore(model.value.board) == 1) {
      if (model.value.board[index] == '') {
        model.update((val) {
          val!.board[index] = 'O';
        });
        _fireOAnimation(index);
        //2. check if someone won
        checkWinning();
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

      //   1. put 'O' int the board list
      model.update((val) {
        val!.board[bestMoveIndex] = 'O';
      });
      //   2. put 'O' with animation in xo- layer
      _fireOAnimation(bestMoveIndex);

      //2. check if someone won
      checkWinning();
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

  Future<void> _waitSymbolAnimationThenToggleTurn() async {
    await Future.delayed(
        Duration(milliseconds: model.value.symbolAnimationDuration));
    _toggleXTurn();
  }

  void play({required bool withAI, required int index}) async {
    if (withAI) {
      xPlay(index);
      await _waitSymbolAnimationThenToggleTurn();
      aiPlay();
      await _waitSymbolAnimationThenToggleTurn();
    } else {
      if (model.value.isXTurn) {
        xPlay(index);
        await _waitSymbolAnimationThenToggleTurn();
      } else {
        oPlay(index);
        await _waitSymbolAnimationThenToggleTurn();
      }
    }
  }

  void reset() {
    model.value.winningAnimationController.reset();
    model.update((val) {
      val!.isXTurn = true;
      val.board = ['', '', '', '', '', '', '', '', ''];
      val.winningCells = [];
      val.winningPoints = [];
      val.xoList = [];
    });
  }

//game dimensions///////////////////////////////////////////////////
  void _initializeGridDimenions() {
    model.update((val) {
      val!.gridHeight = dCont.model.value.height * 0.33;
      val.gridWidth = dCont.model.value.width * 0.5;
    });
  }

  void _initializeGridPoints() {
    double w = model.value.gridWidth;
    double h = model.value.gridHeight;

    Offset s0 = const Offset(0, 0);
    Offset s1 = Offset(w / 3, 0);
    Offset s2 = Offset(w / 3 * 2, 0);

    Offset s3 = Offset(0, h / 3);
    Offset s4 = Offset(w / 3, h / 3);
    Offset s5 = Offset(w / 3 * 2, h / 3);

    Offset s6 = Offset(0, h / 3 * 2);
    Offset s7 = Offset(w / 3, h / 3 * 2);
    Offset s8 = Offset(w / 3 * 2, h / 3 * 2);

    model.update((val) {
      //1. initialize start points
      val!.gridPoints.startPoints = [s0, s1, s2, s3, s4, s5, s6, s7, s8];

      //2. initialize corners points
      val.gridPoints.c1 = const Offset(0, 0);
      val.gridPoints.c2 = Offset(w, 0);
      val.gridPoints.c3 = Offset(w, h);
      val.gridPoints.c4 = Offset(0, h);

      //3. initialize vertical points
      val.gridPoints.v1 = Offset(1 * w / 6, 0);
      val.gridPoints.v2 = Offset(3 * w / 6, 0);
      val.gridPoints.v3 = Offset(5 * w / 6, 0);
      val.gridPoints.v4 = Offset(1 * w / 6, h);
      val.gridPoints.v5 = Offset(3 * w / 6, h);
      val.gridPoints.v6 = Offset(5 * w / 6, h);

      //2. initialize horizontal points
      val.gridPoints.h1 = Offset(0, 1 * h / 6);
      val.gridPoints.h2 = Offset(0, 3 * h / 6);
      val.gridPoints.h3 = Offset(0, 5 * h / 6);
      val.gridPoints.h4 = Offset(w, 1 * h / 6);
      val.gridPoints.h5 = Offset(w, 3 * h / 6);
      val.gridPoints.h6 = Offset(w, 5 * h / 6);
    });
  }

//game animation///////////////////////////////////////////////////
  void _initializeGridAnimation() {
    // controler
    model.value.gridAnimationController = AnimationController(
        duration: Duration(milliseconds: model.value.gridAniamteDuration),
        vsync: this);

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
    model.value.symbolAnimationController = AnimationController(
        duration: Duration(milliseconds: model.value.symbolAnimationDuration),
        vsync: this);

    //updating values
    model.value.symbolAnimationController.addListener(() {
      model.update((val) {
        print(model.value.symbolAnimationController.value);
        for (var symbol in val!.xoList) {
          symbol.updateProgress();
        }
      });
    });
    //updating status
    model.value.symbolAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        model.value.symbolAnimationController.repeat();
        print('controller is repeated');
      }
    });
  }

  void _initializeWinningLineAnimation() {
    // controler
    model.value.winningAnimationController = AnimationController(
        duration: Duration(milliseconds: model.value.winningLineDuration),
        vsync: this);

    // tween
    Tween<double> tween = Tween<double>(begin: 0, end: 1);

    //animation
    Animation animation = tween.animate(model.value.winningAnimationController);

    //updating values
    model.value.winningAnimationController.addListener(() {
      model.update((val) {
        val!.winnginLineProgress = animation.value;
      });
    });

    // //updating status
    // model.value.winningAnimationController.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     model.value.winningAnimationController.reset();
    //   }
    // });
  }

  Future<void> _fireGridAnimation() async {
    await Future.delayed(
        Duration(milliseconds: model.value.gridAniamteAfterPeriod));
    model.value.gridAnimationController.forward();
    print('gird animation was fired');
  }

  void _fireOAnimation(int index) {
    //this function will put 'O' symbol on the xo layer
    //with animation
    Offset position = model.value.gridPoints.startPoints[index];
    BigO o = BigO(position);
    model.update((val) {
      val!.xoList.add(o);
    });
    //firing animation
    model.value.symbolAnimationController.forward();
    print('o animation was fired');
  }

  void _fireXAnimation(int index) {
    //this function will put 'X' symbol on the xo layer
    //with animation
    Offset position = model.value.gridPoints.startPoints[index];
    BigX x = BigX(position: position);

    model.update((val) {
      val!.xoList.add(x);
    });

    //firing animation
    model.value.symbolAnimationController.forward();
    print('x animation was fired');
  }

  void _fireWinningConnection() {
    List<Offset> x = [];
    // 1. in case of horizontal winning
    if (isEqualLists(model.value.winningCells, [0, 1, 2])) {
      x.add(model.value.gridPoints.h1);
      x.add(model.value.gridPoints.h4);
    }
    if (isEqualLists(model.value.winningCells, [3, 4, 5])) {
      x = [model.value.gridPoints.h2, model.value.gridPoints.h5];
    }
    if (isEqualLists(model.value.winningCells, [6, 7, 8])) {
      x = [model.value.gridPoints.h3, model.value.gridPoints.h6];
    }

    // 2. in case of vertical winning
    if (isEqualLists(model.value.winningCells, [0, 3, 6])) {
      x = [model.value.gridPoints.v1, model.value.gridPoints.v4];
    }
    if (isEqualLists(model.value.winningCells, [1, 4, 7])) {
      x = [model.value.gridPoints.v2, model.value.gridPoints.v5];
    }
    if (isEqualLists(model.value.winningCells, [2, 5, 8])) {
      x = [model.value.gridPoints.v3, model.value.gridPoints.v6];
    }

    // 3. in case of diagonal winning
    if (isEqualLists(model.value.winningCells, [0, 4, 8])) {
      x.add(model.value.gridPoints.c1);
      x.add(model.value.gridPoints.c3);
    }
    if (isEqualLists(model.value.winningCells, [2, 4, 6])) {
      x = [model.value.gridPoints.c2, model.value.gridPoints.c4];
    }

    //update winngin points
    model.update((val) {
      val!.winningPoints = x;
    });

    //firiing connceting line

    model.value.winningAnimationController.forward();
  }

  @override
  void onInit() {
    super.onInit();
    _initializeGridDimenions();
    _initializeGridPoints();
    _initializeGridAnimation();
    _initializeSymbolAnimation();
    _initializeWinningLineAnimation();
    _fireGridAnimation();
  }

  @override
  void onClose() {
    model.value.symbolAnimationController.dispose();
    model.value.gridAnimationController.dispose();
    model.value.winningAnimationController.dispose();
    print('controllers were disposed------------------------');
    super.onClose();
  }
}

bool isEqualLists(List<int> a, List<int> b) {
  bool x = true;

  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) {
      x = false;
      break;
    }
  }
  return x;
}
