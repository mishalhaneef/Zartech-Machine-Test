import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zartech_machie_test/view/home/widgets/product_add_button.dart';
import 'package:zartech_machie_test/view_model/cart/cart.dart';

class CheckOutProductWidget extends StatelessWidget {
  const CheckOutProductWidget({
    Key? key,
    required this.productName,
    required this.price,
    required this.drinkType,
    required this.i,
  }) : super(key: key);

  final String productName;
  final String price;
  final String drinkType;
  final i;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              child: Text(
                productName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Consumer<CartProvider>(
              builder: (context, value, child) => ProductAddButton(
                index: i,
                onAdd: () {
                  value.increment(i, value.cart);
                },
                onRemove: () {
                  value.decrement(i, value.cart);
                },
                height: 40,
                width: 75,
              ),
            ),
            Text(
              price,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10),
          child: Text(
            price,
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10),
          child: Text(
            drinkType,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
