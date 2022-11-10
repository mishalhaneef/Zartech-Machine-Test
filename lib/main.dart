import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zartech_machie_test/firebase_options.dart';
import 'package:zartech_machie_test/view/root_screen/root.dart';
import 'package:zartech_machie_test/view_model/api/dish_provider.dart';
import 'package:zartech_machie_test/view_model/auth/google_sign_in.dart';
import 'package:zartech_machie_test/view_model/auth/phone_sign_in.dart';
import 'package:zartech_machie_test/view_model/cart/cart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PhoneAuthenticationProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DishProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Zartech Machine Test',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const RootScreen(),
      ),
    );
  }
}
