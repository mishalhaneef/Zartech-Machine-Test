import 'package:flutter/material.dart';
import 'package:zartech_machie_test/view/auth/phone_auth/phone_auth.dart';
import 'package:zartech_machie_test/view/auth/phone_auth/widgets/custom_button.dart';
import 'package:zartech_machie_test/view/auth/phone_auth/widgets/text_field.dart';
import 'package:zartech_machie_test/view_model/auth/phone_sign_in.dart';

class PhoneNumberVerification extends StatelessWidget {
  const PhoneNumberVerification({
    Key? key,
    required this.provider,
  }) : super(key: key);

  final PhoneAuthenticationProvider provider;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFieldWidget(
          hint: 'Enter Phone Number',
          controller: phoneNumberController,
        ),
        CustomButton(
          buttonName: 'Verify Phone Number',
          onTap: () {
            provider.loginWithPhone(phoneNumberController.text);
          },
          color: Colors.orange,
          icon: const Icon(Icons.phone, color: Colors.white),
        ),
      ],
    );
  }
}
