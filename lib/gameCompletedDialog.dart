import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/dice.dart';
import '../models/scorecard.dart';

class GameCompletedDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scoreCard = Provider.of<ScoreCard>(context);
    final dice = Provider.of<Dice>(context, listen: false);
    return AlertDialog(
      title: const Text(
        'Game Completed!!',
        style: TextStyle(fontSize: 23),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Total Score is: ${scoreCard.total}',
            style: const TextStyle(fontSize: 21),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  dice.clear();
                  scoreCard.clear();
                },
                child: const Text(
                  'Regame',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
