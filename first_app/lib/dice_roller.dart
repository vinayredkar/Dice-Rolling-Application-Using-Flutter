import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random(); // Making it efficient to save memory ?

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var diceRoll_1 = Random().nextInt(6) + 1;
  // var changingDiceimage = "assets/images/dice-$diceRoll_1.png";
  var currentDiceRoll = randomizer.nextInt(6) + 1;

  void rollDice() {
    // var diceRoll = Random().nextInt(6) + 1; // now valuw will range from 1-6
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
    // print('Changing Image..');
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$currentDiceRoll.png',
        width: 200,
      ),
      const SizedBox(
        height: 20,
      ),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 10),
            foregroundColor: const Color.fromARGB(255, 165, 244, 54),
            textStyle: const TextStyle(fontSize: 28)),
        child: const Text('Roll Dice'),
      )
    ]);
  }
}
