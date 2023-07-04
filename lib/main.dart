import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[200],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            'Ask Me Anything',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ),
        body: AskMeAnything(),
      ),
    ),
  );
}

class AskMeAnything extends StatefulWidget {
  const AskMeAnything({super.key});

  @override
  State<AskMeAnything> createState() => _AskMeAnythingState();
}

class _AskMeAnythingState extends State<AskMeAnything> {
  int ballCount = 1;

  void ballChanged() {
    setState(() {
      ballCount = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            ballChanged();
          },
          child: Image.asset('images/ball$ballCount.png')),
    );
  }
}
