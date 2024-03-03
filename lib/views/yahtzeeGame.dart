import 'package:flutter/material.dart';
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
