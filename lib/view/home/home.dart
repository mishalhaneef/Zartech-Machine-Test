import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zartech_machie_test/view_model/api/dish_provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final apiProvider = Provider.of<DishProvider>(context, listen: false);
      await apiProvider.getDishData();
    });

    final user = FirebaseAuth.instance.currentUser;

    return Consumer<DishProvider>(builder: (context, provider, child) {
      if (provider.isFetching) {
        return provider.loading();
      }
      return provider.buildHome(provider, context, user);
    });
  }
}
