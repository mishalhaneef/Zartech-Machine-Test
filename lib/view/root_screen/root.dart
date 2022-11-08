import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zartech_machie_test/view/common/loading.dart';
import 'package:zartech_machie_test/view/common/message.dart';
import 'package:zartech_machie_test/view/auth/auth.dart';
import 'package:zartech_machie_test/view/home/home.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Loading();
        } else if (snapshot.hasError) {
          return const MessageWidget('Something Went Wrong!');
        } else if (snapshot.hasData) {
          return const Home();
        } else {
          return const AuthScreen();
        }
      },
    ));
  }
}
