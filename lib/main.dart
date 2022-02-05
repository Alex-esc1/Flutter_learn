import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text("MyApp"),
          centerTitle: true,
        ),
        body: const Center(
            child: Text(
          "My home page",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
    ),
  );
}
