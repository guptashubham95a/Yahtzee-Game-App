import 'package:flutter/material.dart';
import 'package:mp2/main.dart';
import 'package:provider/provider.dart';
import '../models/dice.dart';
import '../models/scorecard.dart';

class GameCompletedDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scoreCard = Provider.of<ScoreCard>(context);
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
                  Provider.of<Dice>(context, listen: false).clear();
                  Provider.of<ScoreCard>(context, listen: false).clear();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Yahtzee(),
                    ),
                  );
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
