import 'package:flutcalc/widgets/touche.dart';
import 'package:flutter/material.dart';

class SouClavierDroit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [Touche(), Touche(), Touche(), Touche()],
      ),
    );
  }
}
