import 'package:flutter/material.dart';
import 'package:zartech_machie_test/core/constants.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key,
    required this.buttonName,
    required this.onTap,
  }) : super(key: key);

  final String buttonName;
  final VoidCallback onTap;
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
              color: buttonName == 'Google' ? Colors.blue : Colors.green,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonName == 'Google'
                      ? const Image(
                          image: AssetImage(google),
                          height: 30,
                          color: Colors.white,
                        )
                      : const Icon(Icons.phone, color: Colors.white),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 8),
                    child: Text(
                      buttonName == 'Google'
                          ? 'Sign in with Google'
                          : 'Sign in with Phone',
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
