import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zartech_machie_test/core/constants.dart';
import 'package:zartech_machie_test/view/auth/phone_auth/phone_auth.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    this.controller,
    required this.hint,
    this.otp = false,
    this.padding = true,
  }) : super(key: key);

  final String hint;
  final dynamic controller;
  final bool padding;
  final bool otp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding
          ? const EdgeInsets.only(right: 38, left: 38, bottom: 30)
          : EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const SizedBox(width: 8),
              Text(
                hint,
                style: const TextStyle(
                    color: Color(0xFF4C4C4C),
                    fontFamily: 'poppins regular',
                    fontSize: 13),
              ),
            ],
          ),
          const SizedBox(height: 10),
          TextField(
            keyboardType:
                hint == 'Age' ? TextInputType.number : TextInputType.text,
            controller: controller,
            autofocus: false,
            decoration: InputDecoration(
              prefixIcon: otp == true
                  ? null
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('+91'),
                      ],
                    ),
              disabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: blueColor),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: blueColor, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: blueColor),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
          )
        ],
      ),
    );
  }
}
