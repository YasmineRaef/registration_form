import 'package:flutter/material.dart';
import 'package:registration_form/presentation/sign_in.dart';
import 'package:registration_form/presentation/sign_up_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: 'signIn',
        debugShowCheckedModeBanner: false,
        routes: {
          'signIn': (context) => const SignInPage(),
          'signUp': (context) => const SignUpPage()
        });
  }
}
