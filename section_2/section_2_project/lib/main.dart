import 'package:flutter/material.dart';

import 'package:section_2_project/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            colors: [Colors.green, Colors.pink, Colors.orange]),
      ),
    ),
  );
}
