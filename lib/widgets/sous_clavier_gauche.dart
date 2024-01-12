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
                  Touche(),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche()
                ])),
                const SizedBox(
                  height: 1,
                ),
                Expanded(
                    child: Row(children: [
                  Touche(),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche()
                ])),
                const SizedBox(
                  height: 1,
                ),
                Expanded(
                    child: Row(children: [
                  Touche(),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche()
                ])),
                const SizedBox(
                  height: 1,
                ),
                Expanded(
                    child: Row(children: [
                  Touche(),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche()
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
                ),
                const SizedBox(width: 1),
                Touche()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
