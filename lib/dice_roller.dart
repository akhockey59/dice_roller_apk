import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var dice = 'assets/dice-1.png';
  void onClick() {
    var num = randomizer.nextInt(6) + 1;
    setState(() {
      dice = 'assets/dice-$num.png';
    });
  }

  @override
  Widget build(dcontext) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        dice,
        width: 200,
      ),
      const SizedBox(height: 20),
      TextButton(
          onPressed: onClick,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: const Color.fromARGB(255, 22, 130, 180),
              textStyle: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
          child: const Text('Roll the Dice'))
    ]);
  }
}
