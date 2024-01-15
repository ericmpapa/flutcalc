import 'package:flutcalc/widgets/sous_clavier_droit.dart';
import 'package:flutcalc/widgets/sous_clavier_gauche.dart';
import 'package:flutter/material.dart';

class Clavier extends StatelessWidget {
  void Function(String)? action;

  Clavier({this.action});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SousClavierGauche(
            action: action,
          ),
          const SizedBox(width: 1),
          SouClavierDroit(
            action: action,
          ),
        ],
      ),
    );
  }
}
