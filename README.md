# Flutter Yahtzee Game App

# CS 442 MP2: Yahtzee Game App Shubham Gupta A20551502

## Specifications

### Sections

This Flutter app implements the classic dice game Yahtzee. User can roll five dice up to three times on their turn to try and achieve different combinations of dice values. After each roll, they can choose which dice to keep and which to reroll. Once they've completed their rolls, they must select a category for their score based on the combination they achieved. The game continues until all categories are filled on the scorecard. The player with the highest total score at the end of the game wins.

## Features

- Roll dice up to three times per turn.
- Select which dice to keep and reroll.
- Choose from different scoring categories.
- View ongoing score and total score.
- Game over dialog box displaying the total score.
- Option to reset the game and start over.
- Visual indication of selected dice and available scoring categories.

## Dependencies

- Provider: State management library for managing game state and data.
- Dart Random: Library for generating random numbers for dice rolls.

## Output

![Output](https://github.com/cs442app/mp2-shubhgupta101/output.png)

## Widgets Used

### DiceDisplay Widget

The DiceDisplay widget is responsible for displaying the dice values during a Yahtzee game. It visually represents the dice using a container with rounded corners and a border to simulate the appearance of dice. Each die's value is displayed in the center of the container.

### CategorySelection Widget

The CategorySelection widget allows the player to select a category for their score after completing their rolls. It presents a list of available categories and allows the user to tap on a category to choose it. This widget helps in managing the scoring process and ensures that players can easily select their desired category.

### ScoreDisplay Widget

The ScoreDisplay widget is responsible for displaying the player's current scorecard during the Yahtzee game. It presents a list of scoring categories along with the corresponding scores achieved by the player. This widget helps players keep track of their progress and make informed decisions about their next moves.

### GameCompletedDialog Widget

The GameCompletedDialog widget is displayed when the Yahtzee game is completed, indicating that all categories on the scorecard have been filled. It presents a dialog box with the player's total score and provides an option to start a new game. This widget serves as a visual indicator of game completion and allows players to choose their next actions.

### YahtzeeGameContent Widget

The YahtzeeGameContent widget is the main component of the Yahtzee game screen. It combines various sub-widgets such as DiceDisplay, CategorySelection, ScoreDisplay, and others to create the complete game interface. This widget manages the game logic, including rolling dice, selecting categories, updating scores, and displaying game over dialogs. It serves as the central hub for all game-related interactions and elements.

## Code Structure and Flow

### Widgets

- **widgets**: Contains separate widget files for each section, promoting code modularity and reusability.

### Models Folder

- **models folder**: Contains the essential class defining the structure of game data.

### Main File

- **main.dart**: Initializes the Flutter application and sets up the Yahtzee widget with the user data.

## Conclusion

By adhering to the specifications and utilizing appropriate widgets and code organization techniques, the application achieves its objectives effectively.
