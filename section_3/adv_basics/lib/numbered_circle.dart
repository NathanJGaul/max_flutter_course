import 'package:flutter/material.dart';

class NumberedCircle extends StatelessWidget {
  const NumberedCircle({
    super.key,
    required this.size,
    required this.number,
    required this.backgroundColor,
  });

  final double size;
  final int number;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          number.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: size * 0.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
