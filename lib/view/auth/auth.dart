import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zartech_machie_test/core/constants.dart';
import 'package:zartech_machie_test/view/auth/phone_auth/phone_auth.dart';
import 'package:zartech_machie_test/view/auth/widgets/sign_button.dart';
import 'package:zartech_machie_test/view_model/auth/google_sign_in.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(firebase, height: 300),
          Column(
            children: [
              SignInButton(
                buttonName: 'Google',
                onTap: () {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.googleLogin(context);
                },
              ),
              SignInButton(
                buttonName: 'Phone',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PhoneAuth(),
                  ));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
