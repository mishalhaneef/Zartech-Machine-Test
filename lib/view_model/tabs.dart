import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api/dish_provider.dart';

tabsGenerator(List<Tab> tabs, context, DishProvider provider) {
  for (int i = 0; i < provider.dishModel.drinks!.length; i++) {
    tabs.add(
      Tab(
        child: Text(
          provider.dishModel.drinks![i].idDrink!,
        ),
      ),
    );
  }
}
