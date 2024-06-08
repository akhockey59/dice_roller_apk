import 'package:flutter/material.dart';
import 'package:practice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 18, 90, 95),
          Color.fromARGB(255, 100, 25, 94),
          Color.fromARGB(255, 100, 25, 87),
        ),
      ),
    ),
  );
}
