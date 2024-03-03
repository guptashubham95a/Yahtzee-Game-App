import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/dice.dart';
import '../models/scorecard.dart';

class CategorySelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dice = Provider.of<Dice>(context);
    final scoreCard = Provider.of<ScoreCard>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var category in ScoreCategory.values
                .where((cat) => cat.index < ScoreCategory.values.length ~/ 2))
              GestureDetector(
                onTap: () {
                  if (dice.values.length != 5) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Roll once before picking category.'),
                      ),
                    );
                  } else {
                    if (!scoreCard.completed)
                      scoreCard.registerScore(category, dice.values);
                    dice.clear();
                  }
                },
                child: Row(
                  children: [
                    Text(
                      "${category.name} :",
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      scoreCard[category] != null
                          ? scoreCard[category].toString()
                          : 'Pick',
                      style: TextStyle(
                        fontSize: 20,
                        color: scoreCard[category] != null
                            ? Colors.black
                            : Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var category in ScoreCategory.values
                .where((cat) => cat.index >= ScoreCategory.values.length ~/ 2))
              GestureDetector(
                onTap: () {
                  if (dice.values.length != 5) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            'Roll the dice before selecting any category.'),
                      ),
                    );
                  } else {
                    scoreCard.registerScore(category, dice.values);
                    dice.clear();
                  }
                },
                child: Row(
                  children: [
                    Text(
                      "${category.name} :",
                      style: const TextStyle(fontSize: 21),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      scoreCard[category] != null
                          ? scoreCard[category].toString()
                          : 'Pick',
                      style: TextStyle(
                        fontSize: 21,
                        color: scoreCard[category] != null
                            ? Colors.black
                            : Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
