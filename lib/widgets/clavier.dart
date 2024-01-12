import 'package:flutcalc/widgets/sous_clavier_droit.dart';
import 'package:flutcalc/widgets/sous_clavier_gauche.dart';
import 'package:flutter/material.dart';

class Clavier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SousClavierGauche(),
          const SizedBox(width: 1),
          SouClavierDroit(),
        ],
      ),
    );
  }
}
