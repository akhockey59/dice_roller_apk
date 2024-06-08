import 'package:flutter/material.dart';
import 'package:practice/dice_roller.dart';

const sA = Alignment.topLeft;
const eA = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});
  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: sA,
          end: eA,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
