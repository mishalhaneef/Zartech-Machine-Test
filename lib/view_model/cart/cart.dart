import 'package:flutter/material.dart';
import 'package:zartech_machie_test/model/dish_model/drink.dart';

class CartProvider extends ChangeNotifier {
  Map<dynamic, dynamic> counter = {};
  int total = 0;
  List<Drink> cart = [];
  int totalPrice = 0;
  final List<int> _tempPriceList = [0];

  /// [counter] is a map value. and in UI all button has their own index.
  /// and when we pass value to the [counter] using the button index it will
  /// only update the particular map. and we can return the value to
  /// the button. so it will update only the button that taps.
  increment(int id, List<Drink> object) {
    counter[id] = counter[id] == null ? 1 : counter[id] + 1;
    var allCounterValues = counter.values;
    total = allCounterValues.reduce((value, element) {
      return value + element;
    });
    // adding dishes to cart
    cart.add(object[id]);
    // total price of all added dishes
    totalPrice = totalSumOfDishes(object, id, _tempPriceList);
    notifyListeners();
  }

  decrement(int id, List<Drink> object) {
    if (counter[id]! > 0) {
      counter[id] -= 1;
      total--;
      cart.remove(object[id]);
      if (cart.isEmpty) {
        cart = [];
        totalPrice = 0;
        notifyListeners();
      }
      if (cart.isNotEmpty) {
        totalPrice = removePrice(object, id, _tempPriceList);
        notifyListeners();
      }
      notifyListeners();
    }
  }

  // function to clear all the state values
  disposeProvider() {
    counter = {0: 0};
    total = 0;
    cart = [];
    totalPrice = 0;
    notifyListeners();
  }
}

totalSumOfDishes(List<Drink> object, int id, List<int> tempPriceList) {
  // as it is not the correct api I'm using drink id as price,
  //  (also taking only first two value)
  tempPriceList.add(int.parse(object[id].idDrink!.substring(0, 2)));
  num price = 0;
  for (var i = 0; i < tempPriceList.length; i++) {
    price = price + tempPriceList[i];
  }
  return price;
}

removePrice(List<Drink> object, int id, List<int> tempPriceList) {
  tempPriceList.remove(int.parse(object[id].idDrink!.substring(0, 2)));
  num price = 0;
  for (var i = 0; i < tempPriceList.length; i++) {
    price = price + tempPriceList[i];
  }
  return price;
}
