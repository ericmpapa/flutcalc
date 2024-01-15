import 'dart:html';

import 'package:flutcalc/widgets/touche.dart';
import 'package:flutter/material.dart';

class SousClavierGauche extends StatefulWidget {
  @override
  State<SousClavierGauche> createState() => _SousClavierGaucheState();
}

class _SousClavierGaucheState extends State<SousClavierGauche> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Expanded(
                    child: Row(children: [
                  Touche(
                    icon: Icons.backspace,
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "±",
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "/",
                  )
                ])),
                const SizedBox(
                  height: 1,
                ),
                Expanded(
                    child: Row(children: [
                  Touche(
                    symbole: "7",
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "8",
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "9",
                  )
                ])),
                const SizedBox(
                  height: 1,
                ),
                Expanded(
                    child: Row(children: [
                  Touche(
                    symbole: "4",
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "5",
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "6",
                  )
                ])),
                const SizedBox(
                  height: 1,
                ),
                Expanded(
                    child: Row(children: [
                  Touche(
                    symbole: "1",
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "2",
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "3",
                  )
                ])),
              ],
            ),
          ),
          const SizedBox(height: 1),
          Expanded(
            child: Row(
              children: [
                Touche(
                  flex: 2,
                  symbole: "0",
                ),
                const SizedBox(width: 1),
                Touche(
                  symbole: ".",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
