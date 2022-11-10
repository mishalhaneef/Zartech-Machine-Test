import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zartech_machie_test/core/constants.dart';
import 'package:zartech_machie_test/view/checkout/widgets/order_complete_alert.dart';
import 'package:zartech_machie_test/view/home/home.dart';
import 'package:zartech_machie_test/view_model/cart/cart.dart';

class HeadWidget extends StatelessWidget {
  const HeadWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: size.width / 2 + 130,
      decoration: const BoxDecoration(
          color: blueColor, borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Center(
        child: Consumer<CartProvider>(
          builder: (context, provider, child) {
            return Text(
              provider.total == 0 || provider.total == 1
                  ? '${provider.total} item'
                  : '${provider.total} items',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      ),
    );
  }
}
