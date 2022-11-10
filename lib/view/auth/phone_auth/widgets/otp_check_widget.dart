import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zartech_machie_test/view/auth/phone_auth/phone_auth.dart';
import 'package:zartech_machie_test/view/auth/phone_auth/widgets/custom_button.dart';
import 'package:zartech_machie_test/view/auth/phone_auth/widgets/text_field.dart';
import 'package:zartech_machie_test/view_model/auth/phone_sign_in.dart';

class OtpChecking extends StatelessWidget {
  const OtpChecking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFieldWidget(
          hint: 'Enter OTP',
          otp: true,
          controller: otpController,
        ),
        CustomButton(
          buttonName: 'Verify OTP',
          onTap: () {
            final provider =
                Provider.of<PhoneAuthenticationProvider>(context, listen: false);
            provider.verifyOTP(context, otpController.text);
          },
          color: Colors.green,
          icon: const Icon(Icons.numbers, color: Colors.white),
        ),
      ],
    );
  }
}
