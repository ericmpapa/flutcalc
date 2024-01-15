import 'package:flutter/material.dart';

class Cadrant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: const Text(
                "operation",
                style: TextStyle(
                    color: Color.fromARGB(255, 229, 225, 229), fontSize: 28),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
                height: 50,
              ),
              Expanded(
                child: Text("Resulat",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.white, fontSize: 32)),
              )
            ],
          )
        ],
      ),
    );
  }
}
