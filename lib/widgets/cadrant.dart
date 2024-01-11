import 'package:flutter/material.dart';

class Cadrant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "operation",
                style: TextStyle(color: Colors.white),
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
                child: Text("Resulat", style: TextStyle(color: Colors.white)),
              )
            ],
          )
        ],
      ),
    );
  }
}
