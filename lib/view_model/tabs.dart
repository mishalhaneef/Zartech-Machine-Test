import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api/dish_provider.dart';

tabsGenerator(List<Tab> tabs, context) {
  final apiProvider = Provider.of<DishProvider>(context, listen: false);
  for (int i = 0; i < apiProvider.dishModel.tableMenuList!.length; i++) {
    tabs.add(
      Tab(
        child: Text(
          apiProvider.dishModel.tableMenuList![i].menuCategory!,
        ),
      ),
    );
  }
}
