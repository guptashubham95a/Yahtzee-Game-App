import 'package:flutter/material.dart';
import 'package:mp2/views/yahtzeeGame.dart';
import 'dart:math';
import 'package:provider/provider.dart';

import 'models/scorecard.dart';
import 'models/dice.dart';

void main() {
  runApp(const Yahtzee());
}

class Yahtzee extends StatelessWidget {
  const Yahtzee({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome to Yahtzee!',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Roll the dice and have fun!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: const Padding(
          padding: EdgeInsets.all(18),
          child: YahtzeeGame(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
