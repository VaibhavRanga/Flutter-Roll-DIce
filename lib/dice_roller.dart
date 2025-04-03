import 'dart:math';

import 'package:flutter/material.dart';

final randomGenerator = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceRoll =
      'assets/images/dice-${randomGenerator.nextInt(6) + 1}.png';

  void rollDice() {
    var imageNumber = randomGenerator.nextInt(6) + 1;
    setState(() {
      activeDiceRoll = 'assets/images/dice-$imageNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        Image.asset(activeDiceRoll, width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
