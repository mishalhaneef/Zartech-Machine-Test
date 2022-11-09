import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  Map<dynamic, dynamic> counter = {};
  int total = 0;

  /// [counter] is a map value. and in UI all button has own index.
  /// and when we pass value to the counter using the button index it will
  /// only update the particular map. and we can return the value to
  /// the button.
  increment(int id) {
    counter[id] = counter[id] == null ? 1 : counter[id] + 1;
    // fetching the map value
    var values = counter.values;
    // function to see the sum of map values
    // and that value is assigning to the [total] variable
    // so we can use that as cart value
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
