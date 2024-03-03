import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';
import 'dart:math';

class Dice with ChangeNotifier {
  late List<int?> _values;
  late List<bool> _held;
  int rollCount = 0;

  Dice(int numDice) {
    _values = List<int?>.filled(numDice, null);
    _held = List<bool>.filled(numDice, false);
  }

  List<int> get values => List<int>.unmodifiable(_values.whereNotNull());

  int? operator [](int index) => _values[index];

  bool isHeld(int index) => _held[index];

  void clear() {
    for (var i = 0; i < _values.length; i++) {
      _values[i] = null;
      _held[i] = false;
    }
    rollCount = 0;
    notifyListeners(); // Notify listeners after clearing
  }

  void roll() {
    for (var i = 0; i < _values.length; i++) {
      if (!_held[i]) {
        _values[i] = Random().nextInt(6) + 1;
      }
    }
    rollCount++;
    notifyListeners(); // Notify listeners after rolling
  }

  void toggleHold(int index) {
    _held[index] = !_held[index];
    notifyListeners(); // Notify listeners after toggling hold status
  }
}
