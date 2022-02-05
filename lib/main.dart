import 'package:flutter/material.dart';

void main() => runApp(My());

class My extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text("My super app"),
          centerTitle: true,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Column(children: <Widget>[
          const LinearProgressIndicator(value: 23),
          const Text(
            '23 %',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ]),
      ),
    );
  }
}
