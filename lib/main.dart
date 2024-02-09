import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int answerQuestion = 1;

  void getAnswers() {
    setState(() {
      answerQuestion = Random().nextInt(5) + 1;
      //print('$answerQuestion');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Magic Answers'),
        ),
        backgroundColor: Colors.lightBlue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  getAnswers();
                },
                child: Image(
                  image: AssetImage('../images/ball$answerQuestion.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
