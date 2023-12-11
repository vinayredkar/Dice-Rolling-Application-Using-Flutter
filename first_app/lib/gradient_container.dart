import 'package:flutter/material.dart';
// import 'package:first_app/style_text.dart';
import 'package:first_app/dice_roller.dart';


const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  

  @override
  Widget build(context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Colors.green],
              begin: startAlignment,
              end: endAlignment),
        ),
        child: Center(
            child:DiceRoller() ));
  }
}
