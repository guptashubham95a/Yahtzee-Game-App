import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/dice.dart';
import '../models/scorecard.dart';
import './gameCompletedDialog.dart';
import './categorySelection.dart';

class YahtzeeGameContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Dice(5),
      child: Consumer<Dice>(
        builder: (context, dice, _) {
          return ChangeNotifierProvider(
            create: (_) => ScoreCard(),
            child: Consumer<ScoreCard>(
              builder: (context, scoreCard, _) {
                return Center(
                  child: Column(
                    children: [
                      DiceDisplay(),
                      ElevatedButton(
                        onPressed: () {
                          if (scoreCard.completed) {
                            dice.clear();
                            scoreCard.clear();
                          }

                          if (dice.rollCount < 3) {
                            dice.roll();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              dice.rollCount < 3 ? Colors.blue : Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20), // Adjust the button's border radius
                          ),
                          elevation:
                              4, // Add elevation to create a raised effect
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 24),
                        ),
                        child: Text(
                          dice.rollCount < 3
                              ? 'Roll (${dice.rollCount + 1})'
                              : ((scoreCard.completed)
                                  ? 'Smash Again!'
                                  : 'Out of rolls'),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      CategorySelection(),
                      ScoreDisplay(),
                      if (scoreCard.completed) GameCompletedDialog()
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DiceDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dice = Provider.of<Dice>(context);
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(5, (index) {
          return GestureDetector(
            onTap: () {
              if (dice.values.length != 5) {
                showMessage(context, 'Roll the dice before selecting.');
              }
              if (dice.values.length == 5) dice.toggleHold(index);
            },
            child: Container(
              width: 50,
              height: 65,
              margin: const EdgeInsets.all(11),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: dice.isHeld(index) ? Colors.green : Colors.blueGrey,
                  width: 3,
                ),
              ),
              child: Center(
                child: Text(
                  dice[index]?.toString() ?? '',
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class ScoreDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scoreCard = Provider.of<ScoreCard>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 16.1),
      child: Text(
        'Current Score: ${scoreCard.total}',
        style: const TextStyle(fontSize: 21),
      ),
    );
  }
}
