import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Assets'),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const Image(
                image: AssetImage('assets/image/bg.jpg'),
              ),
              Image.asset('assets/icons/icon.png')
            ],
          ),
        ),
      ),
    );
  }
}
