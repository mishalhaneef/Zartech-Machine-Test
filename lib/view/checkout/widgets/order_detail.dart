import 'package:flutter/material.dart';

class OrderDetailCard extends StatelessWidget {
  const OrderDetailCard({
    Key? key,
    required this.size,
    required this.children,
  }) : super(key: key);

  final Size size;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height - 400,
      width: size.width / 2 + 130,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 0),
              color: Color.fromARGB(255, 196, 196, 196),
              blurRadius: 5.0,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(10)),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
