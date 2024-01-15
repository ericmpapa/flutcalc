import 'package:flutter/material.dart';

class Touche extends StatelessWidget {
  int flex = 1;
  Color couleurFond;
  Color couleurTexte;
  String symbole;
  IconData? icon;
  void Function(String)? action;

  Touche(
      {this.flex = 1,
      this.couleurFond = const Color.fromARGB(255, 73, 73, 73),
      this.couleurTexte = const Color.fromARGB(255, 229, 225, 229),
      this.symbole = "",
      this.icon,
      this.action});

  @override
  Widget build(Object context) {
    return Expanded(
      flex: flex,
      child: Material(
        color: couleurFond,
        child: InkWell(
          onTap: () {
            if (action != null) {
              action!(symbole);
            }
          },
          child: Center(
            child: icon == null
                ? Text(symbole,
                    style: TextStyle(color: couleurTexte, fontSize: 20))
                : Icon(icon, color: couleurTexte),
          ),
        ),
      ),
    );
  }
}
