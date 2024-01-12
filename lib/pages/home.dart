import 'package:flutcalc/widgets/cadrant.dart';
import 'package:flutcalc/widgets/clavier.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
        children: [Cadrant(), Clavier()],
      ),
    );
  }
}
