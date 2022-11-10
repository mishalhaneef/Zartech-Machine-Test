import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:zartech_machie_test/core/constants.dart';
import 'package:zartech_machie_test/model/dish_model/drink.dart';
import 'package:zartech_machie_test/view/auth/phone_auth/widgets/custom_button.dart';
import 'package:zartech_machie_test/view/checkout/widgets/checkout_product.dart';
import 'package:zartech_machie_test/view/checkout/widgets/head_widget.dart';
import 'package:zartech_machie_test/view/checkout/widgets/order_complete_alert.dart';
import 'package:zartech_machie_test/view/checkout/widgets/order_detail.dart';
import 'package:zartech_machie_test/view/checkout/widgets/total_price.dart';
import 'package:zartech_machie_test/view/home/home.dart';
import 'package:zartech_machie_test/view_model/cart/cart.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Summery'),
        backgroundColor: blueColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          HeadWidget(size: size),
          OrderDetailCard(
            size: size,
            children: [
              Consumer<CartProvider>(
                builder: (context, value, child) {
                  /// [Set] will not add any of duplicate values
                  Set<Drink> drinkList = <Drink>{};
                  List<Drink> duplicateItemRemovedList =
                      value.cart.where((dish) => drinkList.add(dish)).toList();
                  return ListView.separated(
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final newData = duplicateItemRemovedList[index];

                      final price = newData.idDrink!.substring(0, 2);
                      final productName = newData.strDrink!;
                      final drinkType = newData.strCategory!;

                      return CheckOutProductWidget(
                        price: 'INR $price',
                        productName: productName,
                        drinkType: drinkType,
                        i: index,
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: duplicateItemRemovedList.length,
                  );
                },
              )
            ],
          ),
          TotalPriceOfDishes(size: size),
          CustomButton(
            buttonName: 'Place Order',
            onTap: () {
              final provider =
                  Provider.of<CartProvider>(context, listen: false);
              if (provider.cart.isEmpty) {
                Fluttertoast.showToast(
                  msg: "No Item In the Cart",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  fontSize: 16.0,
                );
              } else {
                ontap(context, provider);
              }
            },
            color: Colors.green,
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

ontap(context, CartProvider provider) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => const Home(),
    ),
    (route) => false,
  );
  showDialog(
    context: context,
    builder: (context) {
      return const OrderCompleteAlert();
    },
  );
  provider.disposeProvider();
}
