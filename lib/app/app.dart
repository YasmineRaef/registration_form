import 'package:flutter/material.dart';
import 'package:registration_form/presentation/sign_in.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignInPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
