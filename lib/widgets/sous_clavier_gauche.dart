import 'dart:html';

import 'package:flutcalc/widgets/touche.dart';
import 'package:flutter/material.dart';

class SousClavierGauche extends StatefulWidget {
  void Function(String)? action;

  SousClavierGauche({this.action});

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
                    action: (symbol) {
                      widget.action!("bcp");
                    },
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "C",
                    action: widget.action,
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "/",
                    action: widget.action,
                  )
                ])),
                const SizedBox(
                  height: 1,
                ),
                Expanded(
                    child: Row(children: [
                  Touche(
                    symbole: "7",
                    action: widget.action,
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "8",
                    action: widget.action,
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "9",
                    action: widget.action,
                  )
                ])),
                const SizedBox(
                  height: 1,
                ),
                Expanded(
                    child: Row(children: [
                  Touche(
                    symbole: "4",
                    action: widget.action,
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "5",
                    action: widget.action,
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "6",
                    action: widget.action,
                  )
                ])),
                const SizedBox(
                  height: 1,
                ),
                Expanded(
                    child: Row(children: [
                  Touche(
                    symbole: "1",
                    action: widget.action,
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "2",
                    action: widget.action,
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Touche(
                    symbole: "3",
                    action: widget.action,
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
                  action: widget.action,
                ),
                const SizedBox(width: 1),
                Touche(
                  symbole: ".",
                  action: widget.action,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
