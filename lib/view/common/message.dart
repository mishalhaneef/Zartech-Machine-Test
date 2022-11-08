import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget(this.text, {Key? key}) : super(key: key);

  final dynamic text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontFamily: 'Helvatica'),
      ),
    );
  }
}
