// ignore_for_file: avoid_unnecessary_containers

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
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const LinearProgressIndicator(value: 23),
                  const Text(
                    '23 %',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const Text(
                    'Press button to download',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ]),
          ),
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.cloud_download),
        ),
      ),
    );
  }
}
