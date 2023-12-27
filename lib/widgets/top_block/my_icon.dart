import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  const MyIcon(
    this.path, {
    super.key,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 60, height: 60, child: Image.asset(path));
  }
}
