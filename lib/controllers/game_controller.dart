import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/controllers/dimensions_controller.dart';
import 'package:funny_tic_tac_toe/models/game_model.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/xo_layer/big_o.dart';
import 'package:funny_tic_tac_toe/widgets/game_widgets/xo_layer/big_x.dart';
import 'package:get/get.dart';

class GameController extends GetxController with GetTickerProviderStateMixin {
  //this controller is responsible of game screen and its animations
  Rx<GameModel> model = GameModel().obs;
  DimensionsController dCont = Get.find<DimensionsController>();

//1. game logic////////////////////////////////////////////////////////////////
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
    //if the following:
    //1. if the game is still ongoing, and
    //2. the index in the grid list is empty, and
    //3. the playing is allowed (o-player is NOT playing now)

    //do the following:
    //   1. prevent playing during symbol animation
    //   2. put 'X' int the board list
    //   3. put 'X' with animation in xo-layer
    //   4. give game trun to 'O'
    //   5. move the moving dash
    //   6. check if someone won
    if (getScore(model.value.board) == 1 &&
        model.value.board[index] == '' &&
        model.value.isPlayAllowed) {
      _preventPlayingDuringAnimation();
      model.update((val) {
        val!.board[index] = 'X';
        val.isXTurn = false;
        _fireMovingDashAnimation();
      });
      _fireXAnimation(index);

      checkWinning();
    }
  }

  Future<void> checkWinning() async {
    //1. in case o player wins:
    //   1. increments o-score, and
    //   2. fire the wining line.
    //   3. show barrier
    //   3. fire the dialoge animation

    if (getScore(model.value.board) == 10) {
      model.update((val) {
        val!.oScore++;
      });
      _fireWinningConnection();
      await Future.delayed(
          Duration(milliseconds: model.value.winningLineDuration));
      _showBarrier();
      _fireDialogAnimation();
    }
    //2. in case x player wins:
    //   1. increments x-score, and
    //   2. fire the wining line.
    //   3. show barrier
    //   4. fire the dialoge animation
    if (getScore(model.value.board) == -10) {
      model.update((val) {
        val!.xScore++;
      });
      _fireWinningConnection();
      await Future.delayed(
          Duration(milliseconds: model.value.winningLineDuration));
      _showBarrier();
      _fireDialogAnimation();
    }
  }

  void oPlay(int index) {
    //if the following:
    //1. if the game is still ongoing, and
    //2. the index in the grid list is empty, and
    //3. the playing is allowed (x-player is NOT playing now)

    //do the following:
    //   1. prevent playing during symbol animation
    //   2. put 'O' int the board list
    //   3. put 'O' with animation in xo-layer
    //   4. give game trun to 'X'
    //   5. move the moving dash
    //   6. check if someone won

    if (getScore(model.value.board) == 1 &&
        model.value.board[index] == '' &&
        model.value.isPlayAllowed) {
      _preventPlayingDuringAnimation();
      model.update((val) {
        val!.board[index] = 'O';
        val.isXTurn = true;
        _fireMovingDashAnimation();
      });
      _fireOAnimation(index);
      checkWinning();
    }
  }

  void aiPlay() {
    //if the following:
    //1. if the game is still ongoing, and
    //2. the index in the grid list is empty, and
    //3. the playing is allowed (x-player is NOT playing now)

    //do the following:
    //   1. prevent playing during symbol animation
    //   2. put 'O' int the board list
    //   3. put 'O' with animation in xo-layer
    //   4. give game trun to 'X'
    //   5. move the moving dash
    //   5. check if someone won

    if (getScore(model.value.board) == 1 && model.value.isPlayAllowed) {
      _preventPlayingDuringAnimation();

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

      //   3. give game trun to 'X'
      model.update((val) {
        val!.isXTurn = true;
      });
      //   4. move the moving dash
      _fireMovingDashAnimation();

      //   5. check if someone won
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

  Future<void> _waitSymbolAnimation() async {
    await Future.delayed(
        Duration(milliseconds: model.value.symbolAnimationDuration));
  }

  void play({required bool withAI, required int index}) async {
    if (withAI) {
      // always 'X' player plays first.
      xPlay(index);
      await _waitSymbolAnimation();
      if (!model.value.isXTurn) {
        // if x-player plays successfully, ai-player will play
        aiPlay();
        await _waitSymbolAnimation();
      }
    } else {
      if (model.value.isXTurn) {
        xPlay(index);
        await _waitSymbolAnimation();
      } else {
        oPlay(index);
        await _waitSymbolAnimation();
      }
    }
  }

  void reset() {
    //1. reset winning line animation controller
    model.value.winningAnimationController.reset();

    model.update((val) {
      //2. empty the board
      val!.board = ['', '', '', '', '', '', '', '', ''];

      //32. empty the winning cells
      val.winningCells = [];

      //4. empty the winning points
      val.winningPoints = [];

      //5. empty xo list
      val.xoList = [];
    });
  }

  Future<void> _preventPlayingDuringAnimation() async {
    model.update((val) {
      val!.isPlayAllowed = false;
    });
    await Future.delayed(
        Duration(milliseconds: model.value.symbolAnimationDuration));
    model.update((val) {
      val!.isPlayAllowed = true;
    });
  }

//2. game dimensions///////////////////////////////////////////////////////

  void _initializePanelDimenions() {
    model.update((val) {
      val!.panelHeight = dCont.model.value.height * 0.1;
      val.panelWidth = dCont.model.value.width * 0.6;
    });
  }

//3. grid ////////////////////////////////////////////////////////////////

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
        begin: model.value.gridAlignmentStart,
        end: model.value.gridAlignmentEnd);

    //animation
    Animation animation = tween.animate(curvedAnimation);

    //updating values
    model.value.gridAnimationController.addListener(() {
      model.update((val) {
        val!.gridAlignment = animation.value;
      });
    });
  }

  Future<void> _fireGridAnimation() async {
    await Future.delayed(
        Duration(milliseconds: model.value.gridAniamteAfterPeriod));
    model.value.gridAnimationController.forward();
  }

//4.  panel //////////////////////////////////////////////////////////////////////

  void _initializePanelAnimation() {
    // controler
    model.value.panelAnimationController = AnimationController(
        duration: Duration(milliseconds: model.value.panelAniamteDuration),
        vsync: this);

    //curve
    CurvedAnimation curvedAnimation = CurvedAnimation(
        parent: model.value.gridAnimationController, curve: Curves.elasticOut);

    // tween
    Tween<Alignment> tween = Tween<Alignment>(
        begin: model.value.panelAlignmentStart,
        end: model.value.panelAlignmentEnd);

    //animation
    Animation animation = tween.animate(curvedAnimation);

    //updating values
    model.value.panelAnimationController.addListener(() {
      model.update((val) {
        val!.panelAlignment = animation.value;
      });
    });
  }

  Future<void> _firePanelAnimation() async {
    await Future.delayed(
        Duration(milliseconds: model.value.panelAniamteAfterPeriod));
    model.value.panelAnimationController.forward();
  }

//5. moving dash

  void _initializeMovingDashAnimation() {
    // controler
    model.value.movingDashAnimationController = AnimationController(
        duration: Duration(milliseconds: model.value.movingDashAniamteDuration),
        vsync: this);

    //curve
    CurvedAnimation curvedAnimation = CurvedAnimation(
        parent: model.value.movingDashAnimationController,
        curve: Curves.easeIn);

    // tween
    Tween<double> tween = Tween<double>(begin: 0, end: 1);

    //animation
    Animation animation = tween.animate(curvedAnimation);

    //updating values
    model.value.movingDashAnimationController.addListener(() {
      model.update((val) {
        val!.movingDashFraction = animation.value;
      });
    });
  }

  void _fireMovingDashAnimation() {
    if (model.value.movingDashAnimationController.status ==
        AnimationStatus.dismissed) {
      model.value.movingDashAnimationController.forward();
    }
    if (model.value.movingDashAnimationController.status ==
        AnimationStatus.completed) {
      model.value.movingDashAnimationController.reverse();
    }
  }

//6. xo layer //////////////////////////////////////////////////////////////////////

  void _initializeSymbolAnimation() {
    // controler
    model.value.symbolAnimationController = AnimationController(
        duration: Duration(milliseconds: model.value.symbolAnimationDuration),
        vsync: this);

    //updating values
    model.value.symbolAnimationController.addListener(() {
      model.update((val) {
        for (var symbol in val!.xoList) {
          symbol.updateProgress();
        }
      });
    });
    //updating status
    model.value.symbolAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        model.value.symbolAnimationController.repeat();
      }
    });
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
  }

//7. winning line ////////////////////////////////////////////////////////////////////

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

//8. dialog /////////////////////////////////////////////////////////

  void _initializeDialogDimensions() {
    model.update((val) {
      val!.dialogHeight = dCont.model.value.height * 0.33;
      val.dialogWidth = dCont.model.value.width;
    });
  }

  _initializeDialogAnimation() {
    // controler
    model.value.dialogAnimationController = AnimationController(
        duration: Duration(milliseconds: model.value.dialogAniamteDuration),
        vsync: this);

    //curve
    CurvedAnimation curvedAnimation = CurvedAnimation(
        parent: model.value.dialogAnimationController, curve: Curves.bounceOut);

    // tween
    Tween<Alignment> tween = Tween<Alignment>(
        begin: model.value.dialogAlignmentStart,
        end: model.value.dialogAlignmentEnd);

    //animation
    Animation animation = tween.animate(curvedAnimation);

    //updating values
    model.value.dialogAnimationController.addListener(() {
      model.update((val) {
        val!.dialogAlignment = animation.value;
      });
    });
  }

  void _fireDialogAnimation() {
    model.value.dialogAnimationController.forward();
  }

  void _unFireDialogAnimation() {
    model.value.dialogAnimationController.reverse();
  }

  void continueFunction() {
    // 1. reset
    reset();
    // 2. unfire dialog
    _unFireDialogAnimation();
    // 3. hide barrier
    _hideBarrier();
  }

//9. barrier /////////////////////////////////////////////////

  _showBarrier() {
    //show the black barrier behind the dialog
    model.update((val) {
      val!.showBarrier = true;
    });
  }

  _hideBarrier() {
    //hide the black barrier behind the dialog
    model.update((val) {
      val!.showBarrier = false;
    });
  }

  @override
  void onInit() {
    //initialize dimensions
    _initializeGridDimenions();
    _initializeGridPoints();
    _initializePanelDimenions();
    _initializeDialogDimensions();

    //initialize animations
    _initializeGridAnimation();
    _initializeSymbolAnimation();
    _initializeWinningLineAnimation();
    _initializeMovingDashAnimation();
    _initializePanelAnimation();
    _initializeDialogAnimation();

    //firing animations
    _fireGridAnimation();
    _firePanelAnimation();

    super.onInit();
  }

  @override
  void onClose() {
    model.value.symbolAnimationController.dispose();
    model.value.gridAnimationController.dispose();
    model.value.winningAnimationController.dispose();
    model.value.panelAnimationController.dispose();
    model.value.movingDashAnimationController.dispose();
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
