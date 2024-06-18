import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  //Method for changing the dice images.
  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade600,
        appBar: AppBar(title: const Text('Dicee')),
        body: SafeArea(
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        changeDice();
                      },
                      child: Image.asset('images/dice$leftDiceNumber.png')),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        changeDice();
                      },
                      child: Image.asset('images/dice$rightDiceNumber.png')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
