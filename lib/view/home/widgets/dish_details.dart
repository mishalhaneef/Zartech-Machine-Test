import 'package:flutter/material.dart';
import 'package:zartech_machie_test/model/dish_model/drink.dart';
import 'package:zartech_machie_test/view/home/widgets/product_add_button.dart';

class DishDetailsWidget extends StatelessWidget {
  const DishDetailsWidget({
    Key? key,
    required this.data,
    required this.onAdd,
    required this.onRemove,
    required this.i,
  }) : super(key: key);

  final Drink data;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  final int i;
  @override
  Widget build(BuildContext context) {
    const height = SizedBox(height: 10);
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      height: data.strCategory == 'Ordinary Drink' ? 300 : 280,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              height: data.strCategory == 'Ordinary Drink' ? 300 : 280,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  height,
                  Text(
                    data.strDrink!,
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
                        'INR ${data.idDrink!.substring(0, 2)}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${data.strCategory}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  height,
                  Text(
                    data.strInstructions!,
                    style: const TextStyle(color: Colors.black54),
                  ),
                  height,
                  ProductAddButton(index: i, onAdd: onAdd, onRemove: onRemove),
                  if (data.strCategory == 'Ordinary Drink')
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
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(data.strDrinkThumb!))),
              ))
        ],
      ),
    );
  }
}
