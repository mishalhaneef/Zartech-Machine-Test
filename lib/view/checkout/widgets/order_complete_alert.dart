import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../view_model/cart/cart.dart';

class OrderCompleteAlert extends StatelessWidget {
  const OrderCompleteAlert({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, value, child) => AlertDialog(
        title: const Text("Congrats, Your Order has been Placed 🎉"),
        icon: const Icon(Icons.shopping_cart),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'),
          )
        ],
      ),
    );
  }
}
