import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:zartech_machie_test/model/dish_model/dish_model.dart';
import 'package:zartech_machie_test/repository/dish_repository.dart';

class DishProvider extends ChangeNotifier {
  bool isFetching = true;
  List<DishModel> dishes = [];
  late DishModel dishModel;
  final DishNetwork _dishApiService = DishNetwork();

  Future<DishModel> getDishData() async {
    try {
      dishModel = await _dishApiService.getDishDatas();
      isFetching = false;
      notifyListeners();
    } catch (e) {
      isFetching = true;
      notifyListeners();
    }

    return dishModel;
  }
}
