import 'package:flutter/material.dart';
import 'package:funny_tic_tac_toe/views/home_screen.dart';

/*
git add *
git commit -m  "first commit"
git log --oneline 
git push https://github.com/MohammedSolyman/funny_tic_tac_toe.git master

*/
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
