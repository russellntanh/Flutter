import 'package:flutter/material.dart';

void main() {
  runApp(
    const Center(
      child: Text(
        "This is my first Flutter App",
        style: TextStyle(
          fontSize: 30,
          backgroundColor: Colors.amberAccent,
        ),
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}
