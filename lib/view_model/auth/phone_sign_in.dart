import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zartech_machie_test/view/home/home.dart';

class PhoneAuthenticationProvider extends ChangeNotifier {
  FirebaseAuth auth = FirebaseAuth.instance;
  String verificationID = '';
  User? user;

  void loginWithPhone(String phoneNumber) async {
    log("+91$phoneNumber");
    try {
      auth.verifyPhoneNumber(
        phoneNumber: "+91$phoneNumber",
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((value) {
            log("You are logged in successfully");
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          log(e.message.toString());
          Fluttertoast.showToast(
            msg: "Verification Failed try Again",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            fontSize: 16.0,
          );
        },
        codeSent: (String verificationIds, int? resendToken) {
          verificationID = verificationIds;
          notifyListeners();
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {
      Fluttertoast.showToast(
        msg: "Something went wrong",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        fontSize: 16.0,
      );
    }
  }

  void verifyOTP(BuildContext context, String otp) async {
    /// storing verification code id and otp to [credential] variable
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationID,
      smsCode: otp,
    );

    await auth.signInWithCredential(credential).then(
      (value) {
        user = FirebaseAuth.instance.currentUser;
        notifyListeners();
      },
    ).whenComplete(
      () {
        if (user != null) {
          Fluttertoast.showToast(
            msg: "You are logged in successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            fontSize: 16.0,
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        } else {
          Fluttertoast.showToast(
            msg: "login failed, Try again",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            fontSize: 16.0,
          );
        }
      },
    );
  }
}
