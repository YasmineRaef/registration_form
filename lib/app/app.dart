import 'package:flutter/material.dart';
import 'package:registration_form/presentation/pages/home_page.dart';
import 'package:registration_form/presentation/pages/sign_in_page.dart';
import 'package:registration_form/presentation/pages/sign_up_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: 'signIn',
        debugShowCheckedModeBanner: false,
        routes: {
          'signIn': (context) => const SignInPage(),
          'signUp': (context) => const SignUpPage(),
          'home': (context) => const HomePage()
        });
  }
}
