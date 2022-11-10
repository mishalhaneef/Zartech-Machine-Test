import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../view_model/cart/cart.dart';

class TotalPriceOfDishes extends StatelessWidget {
  const TotalPriceOfDishes({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: size.width / 2 + 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 0),
            color: Color.fromARGB(255, 196, 196, 196),
            blurRadius: 5.0,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Total Amount',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Consumer<CartProvider>(
              builder: (context, value, child) => Text(
                'INR ${value.totalPrice}',
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
