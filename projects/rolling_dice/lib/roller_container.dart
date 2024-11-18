import 'package:flutter/material.dart';
import 'package:rolling_dice/dice_roller.dart';
// import 'package:rolling_dice/styled_text.dart';

class RollerContainer extends StatelessWidget {
  RollerContainer(this.colors, {super.key});

  List<Color> colors = const [
    Color.fromARGB(255, 96, 46, 182),
    Color.fromARGB(255, 132, 96, 231),
  ];

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
