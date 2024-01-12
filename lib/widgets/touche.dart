import 'package:flutter/material.dart';

class Touche extends StatelessWidget {
  int flex = 1;

  Touche({this.flex = 1});

  @override
  Widget build(Object context) {
    return Expanded(
      flex: flex,
      child: Container(
        color: Colors.amber,
      ),
    );
  }
}
