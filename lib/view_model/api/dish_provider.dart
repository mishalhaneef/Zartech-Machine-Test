import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:zartech_machie_test/model/dish_model/dish_model.dart';
import 'package:zartech_machie_test/repository/dish_repository.dart';
import 'package:zartech_machie_test/view/home/widgets/appbar.dart';
import 'package:zartech_machie_test/view/home/widgets/dish_details.dart';
import 'package:zartech_machie_test/view/home/widgets/drawer.dart';
import 'package:zartech_machie_test/view_model/cart/cart.dart';
import 'package:zartech_machie_test/view_model/tabs.dart';

import '../../view/common/loading.dart';

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

  /// WIDGETS

  Widget buildHome(DishProvider provider, context, user) {
    List<Tab> tabs = <Tab>[];
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    tabsGenerator(tabs, context, provider);
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(110),
              child: AppBarWidget(tabs: tabs)),
          drawer: DrawerWidgets(user: user!),
          body: TabBarView(
              children:
                  List.generate(provider.dishModel.drinks!.length, (index) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: provider.dishModel.drinks!.length,
                    itemBuilder: (context, i) {
                      final data = provider.dishModel.drinks![i];
                      // log(i.toString());
                      return DishDetailsWidget(
                        i: i,
                        data: data,
                        onAdd: () {
                          cartProvider.increment(i, dishModel.drinks!);
                        },
                        onRemove: () {
                          cartProvider.decrement(i, dishModel.drinks!);
                          Fluttertoast.showToast(
                            msg: "Remove from cart",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            fontSize: 16.0,
                          );
                        },
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const Divider(height: 5),
                  ),
                ],
              ),
            );
          }))),
    );
  }

  Widget loading() {
    return const Scaffold(
      body: Loading(),
    );
  }
}
