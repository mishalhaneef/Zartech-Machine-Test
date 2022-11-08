import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zartech_machie_test/core/constants.dart';
import 'package:zartech_machie_test/view_model/auth/google_sign_in.dart';

class DrawerWidgets extends StatelessWidget {
  const DrawerWidgets({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
    return Drawer(
      child: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 50),
          CircleAvatar(
            backgroundImage: NetworkImage(
                user.photoURL == null ? userImage : user.photoURL!),
          ),
          const SizedBox(height: 30),
          Text(user.displayName == null
              ? '${user.phoneNumber}'
              : '${user.displayName}'),
          const SizedBox(height: 30),
          Text('UID : ${user.uid}'),
          const SizedBox(height: 30),
          IconButton(
            onPressed: () async {
              if (user.phoneNumber != null) {
                await FirebaseAuth.instance.signOut();
              } else {
                provider.logout();
              }
            },
            icon: const Icon(Icons.logout),
          )
        ],
      )),
    );
  }
}
