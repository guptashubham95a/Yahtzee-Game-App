import 'package:flutter/material.dart';
import 'package:mp2/models/scorecard.dart';
import 'dart:math';
import 'package:provider/provider.dart';
import '../models/dice.dart';
import '../yahtzeeGameContent.dart';

class YahtzeeGame extends StatelessWidget {
  const YahtzeeGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: YahtzeeGameContent(),
    );
  }
}
