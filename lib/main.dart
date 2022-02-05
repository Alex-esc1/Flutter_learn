import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: Center(
    child: Text(
      "ПРИВЕТ",
      style: TextStyle(
          fontSize: 50, color: Colors.amber, fontWeight: FontWeight.bold),
      textDirection: TextDirection.ltr,
    ),
  )));
}
