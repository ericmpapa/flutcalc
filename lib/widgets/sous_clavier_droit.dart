import 'package:flutcalc/widgets/touche.dart';
import 'package:flutter/material.dart';

class SouClavierDroit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Touche(
            symbole: "*",
          ),
          const SizedBox(
            height: 1,
          ),
          Touche(
            symbole: "-",
          ),
          const SizedBox(
            height: 1,
          ),
          Touche(
            symbole: "+",
          ),
          const SizedBox(
            height: 1,
          ),
          Touche(
            flex: 2,
            couleurFond: const Color.fromARGB(255, 255, 195, 9),
            couleurTexte: const Color.fromARGB(255, 35, 35, 35),
            symbole: "=",
          )
        ],
      ),
    );
  }
}
