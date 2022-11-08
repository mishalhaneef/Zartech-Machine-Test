import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zartech_machie_test/core/constants.dart';
import 'package:zartech_machie_test/model/dish_model/category_dish.dart';
import 'package:zartech_machie_test/view_model/cart/cart.dart';

class DishDetailsWidget extends StatelessWidget {
  const DishDetailsWidget({
    Key? key,
    required this.data,
    required this.onAdd,
    required this.onRemove,
    required this.i,
  }) : super(key: key);

  final CategoryDish data;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  final int i;
  @override
  Widget build(BuildContext context) {
    const height = SizedBox(height: 10);
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      height: data.addonCat != null ? 300 : 280,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              height: data.addonCat != null ? 300 : 280,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  height,
                  Text(
                    data.dishName!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'INR ${data.dishPrice}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${data.dishCalories} Calories',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  height,
                  Text(
                    data.dishDescription!,
                    style: const TextStyle(color: Colors.black54),
                  ),
                  height,
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2 - 30,
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
                            onPressed: onAdd,
                            icon: const Icon(Icons.add, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Consumer<CartProvider>(
                              builder: (context, value, child) => Text(
                                value.counter[i] == null
                                    ? '0'
                                    : value.counter[i].toString(),
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
                            onPressed: onRemove,
                            icon: const Icon(Icons.remove, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (data.addonCat!.isNotEmpty)
                    const Text(
                      'Customizations available',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  height,
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8&w=1000&q=80',
                        ))),
              ))
        ],
      ),
    );
  }
}
