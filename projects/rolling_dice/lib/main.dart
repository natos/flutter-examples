import 'package:flutter/material.dart';
import 'package:rolling_dice/roller_container.dart';

void main() {
  runApp(MaterialApp(
    title: 'Rolling Dice!',
    home: Scaffold(
      body: RollerContainer(const [
        Color.fromARGB(255, 96, 46, 182),
        Color.fromARGB(255, 132, 96, 231),
        Color.fromARGB(255, 218, 96, 231),
        Color.fromARGB(255, 217, 70, 178),
      ]),
    ),
  ));
}
