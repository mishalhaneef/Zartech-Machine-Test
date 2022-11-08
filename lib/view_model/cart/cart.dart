import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  Map<dynamic, dynamic> counter = {};
  int total = 0;

  increment(int id) {
    counter[id] = counter[id] == null ? 1 : counter[id] + 1;
    var values = counter.values;
    total = values.reduce((sum, element) {
      return sum + element;
    });
    notifyListeners();
  }

  decrement(int id) {
    if (counter[id]! > 0) {
      counter[id] -= 1;
      total--;
      notifyListeners();
    }
  }
}
