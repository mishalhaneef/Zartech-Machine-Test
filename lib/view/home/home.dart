import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zartech_machie_test/view_model/api/dish_provider.dart';
import 'package:zartech_machie_test/view_model/tabs.dart';

import '../../view_model/cart/cart.dart';
import 'widgets/appbar.dart';
import 'widgets/dish_details.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final apiProvider = Provider.of<DishProvider>(context, listen: false);
      apiProvider.isFetching ? await apiProvider.getDishData() : null;
    });
    final provider = Provider.of<CartProvider>(context, listen: false);
    final apiProvider = Provider.of<DishProvider>(context, listen: false);
    final user = FirebaseAuth.instance.currentUser;

    List<Tab> tabs = <Tab>[];
    tabsGenerator(tabs, context);
    return DefaultTabController(
      length: apiProvider.dishModel.tableMenuList!.length,
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(110),
              child: AppBarWidget(tabs: tabs)),
          // drawer: DrawerWidgets(user: user!),
          body: TabBarView(
              children: List.generate(
                  apiProvider.dishModel.tableMenuList!.length, (index) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Consumer<DishProvider>(
                    builder: (context, value, child) => ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: value.dishModel.tableMenuList![index]
                          .categoryDishes!.length,
                      itemBuilder: (context, i) {
                        final data = value.dishModel.tableMenuList![index]
                            .categoryDishes![index];
                        // log(i.toString());
                        return DishDetailsWidget(
                          i: i,
                          data: data,
                          onAdd: () {
                            provider.increment(i);
                          },
                          onRemove: () {
                            provider.decrement(i);
                          },
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const Divider(height: 5),
                    ),
                  )
                ],
              ),
            );
          }))),
    );
  }
}
