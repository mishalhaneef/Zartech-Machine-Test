import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zartech_machie_test/core/constants.dart';
import 'package:zartech_machie_test/view_model/cart/cart.dart';

class ProductAddButton extends StatelessWidget {
  const ProductAddButton({
    required this.index,
    required this.onAdd,
    required this.onRemove,
    this.height = 50,
    this.width = 30,
    super.key,
  });

  final VoidCallback onAdd;
  final int index;
  final VoidCallback onRemove;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width / 2 - width,
      decoration: BoxDecoration(
        color: blueColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              padding: const EdgeInsets.only(bottom: 1),
              onPressed: onRemove,
              icon: const Icon(Icons.remove, color: Colors.white),
            ),
            Padding(
              padding: height == 50
                  ? const EdgeInsets.only(left: 20, right: 20)
                  : const EdgeInsets.only(),
              child: Consumer<CartProvider>(
                builder: (context, value, child) => Text(
                  value.counter[index] == null ? '0' : value.counter[index].toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            IconButton(
              padding: const EdgeInsets.only(bottom: 1),
              onPressed: onAdd,
              icon: const Icon(Icons.add, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
