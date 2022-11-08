import 'package:flutter/material.dart';

// assets
const firebase = "asset/image/firebase.png";
const google = "asset/image/google.png";
const userImage = "https://cdn-icons-png.flaticon.com/512/149/149071.png";
// colors
const Color blueColor = Color(0xff4C94E9);

// snackbar
snackBar(context, text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(text)),
  );
}

class ApiEndPoint {
  static const apiKey = 'https://www.mocky.io/v2/5dfccffc310000efc8d2c1ad';
}
