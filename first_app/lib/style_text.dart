import 'package:flutter/material.dart';

// ignore: camel_case_types
class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(
            color: Colors.brown, fontSize: 50, fontWeight: FontWeight.w900));
  }
}
