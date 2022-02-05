// ignore_for_file: avoid_unnecessary_containers, override_on_non_overriding_member

import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(My());

class My extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<My> {
  late bool _load;
  late double _progressV;

  @override
  void initState() {
    _load = false;
    _progressV = 0.0;
    super.initState();
  }

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
            child: _load
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      const LinearProgressIndicator(value: 23),
                      Text(
                        '${(_progressV * 100).round()}%',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )
                : const Text(
                    'Press button to download',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _load = !_load;
              _update();
            });
          },
          child: const Icon(Icons.cloud_download),
        ),
      ),
    );
  }

  void _update() {
    const sec = Duration(seconds: 1);
    Timer.periodic(sec, (Timer t) {
      setState(() {
        _progressV += 0.2;
        if (_progressV.toStringAsFixed(1) == '1.0') {
          _load = false;
          t.cancel();
          _progressV = 0.0;
          return;
        }
      });
    });
  }
}
