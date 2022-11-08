import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.buttonName,
    required this.onTap,
    required this.color,
    required this.icon,
    Key? key,
  }) : super(key: key);

  final String buttonName;
  final VoidCallback onTap;
  final Color color;
  final dynamic icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 30, left: 30, bottom: 20),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon,
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 8),
                    child: Text(
                      buttonName,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
