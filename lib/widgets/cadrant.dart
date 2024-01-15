import 'package:flutter/material.dart';

class Cadrant extends StatelessWidget {
  String operation;

  String resultat;

  Cadrant({this.operation = "", this.resultat = ""});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                operation,
                style: const TextStyle(
                    color: Color.fromARGB(255, 229, 225, 229), fontSize: 28),
              ),
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 50,
                height: 50,
              ),
              Expanded(
                child: Text(resultat,
                    textAlign: TextAlign.right,
                    style: const TextStyle(color: Colors.white, fontSize: 32)),
              )
            ],
          )
        ],
      ),
    );
  }
}
