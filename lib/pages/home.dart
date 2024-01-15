import 'package:flutcalc/widgets/cadrant.dart';
import 'package:flutcalc/widgets/clavier.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String operation = "0";
  String resultat = "0";
  String derniereOperation = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 38, 38, 38),
        elevation: 0,
        title: const Center(child: Text("Calculatrice")),
      ),
      backgroundColor: const Color.fromARGB(255, 38, 38, 38),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Cadrant(
            operation: operation,
            resultat: resultat,
          ),
          Clavier(
            action: (symbole) {
              setState(() {
                if (derniereOperation == "=") {
                  operation = "0";
                }

                if (symbole == "bcp") {
                  operation = operation.substring(0, operation.length - 1);
                  if (operation.isEmpty) {
                    operation = "0";
                  }
                } else if (symbole == "=") {
                  Parser p = Parser();
                  Expression exp = p.parse(operation);
                  resultat = exp
                      .evaluate(EvaluationType.REAL, ContextModel())
                      .toString();
                } else if (symbole == "C") {
                  operation = "0";
                  resultat = "0";
                } else {
                  if (operation == "0") {
                    operation = symbole;
                  } else {
                    operation += symbole;
                  }
                }
                derniereOperation = symbole;
              });
            },
          ),
        ],
      ),
    );
  }
}
