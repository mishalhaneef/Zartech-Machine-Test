import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zartech_machie_test/core/constants.dart';
import 'package:zartech_machie_test/view/auth/phone_auth/widgets/otp_check_widget.dart';
import 'package:zartech_machie_test/view/auth/phone_auth/widgets/phone_verify.dart';
import 'package:zartech_machie_test/view_model/auth/phone_sign_in.dart';

TextEditingController phoneNumberController = TextEditingController();
TextEditingController otpController = TextEditingController();

class PhoneAuth extends StatelessWidget {
  const PhoneAuth({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PhoneAuthentication>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: blueColor,
          title: const Text('OTP Authentication'),
        ),
        body: Consumer<PhoneAuthentication>(
          builder: (context, value, child) {
            if (provider.verificationID == '') {
              return PhoneNumberVerification(provider: provider);
            } else {
              return const OtpChecking();
            }
          },
        ));
  }
}
