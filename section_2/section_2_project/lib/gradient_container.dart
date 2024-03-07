import 'package:flutter/material.dart';

// import 'package:section_2_project/styled_text.dart';
import 'package:section_2_project/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlrignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlrignment,
          colors: colors,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
