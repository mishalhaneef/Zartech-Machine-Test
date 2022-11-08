import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zartech_machie_test/core/constants.dart';
import 'package:zartech_machie_test/view_model/cart/cart.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  final List<Tab> tabs;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: Badge(
            badgeColor: blueColor,
            badgeContent: Consumer<CartProvider>(
              builder: (context, provider, child) {
                return Text(
                  provider.total.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                );
              },
            ),
            child: const Icon(
              Icons.shopping_bag,
              color: Colors.black54,
            ),
          ),
        )
      ],
      backgroundColor: Colors.white,
      bottom: TabBar(
        labelColor: blueColor,
        unselectedLabelColor: Colors.black54,
        isScrollable: true,
        tabs: tabs,
      ),
    );
  }
}
