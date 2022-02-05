import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("MyApp"),
            centerTitle: true,
          ),
          body: const Text("My home page")),
    ),
  );
}
