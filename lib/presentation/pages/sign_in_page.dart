import 'package:flutter/material.dart';
import 'package:registration_form/presentation/customs/custom_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});
  static const route = 'signIn';
  @override
  Widget build(BuildContext context) {
    return const CustomPage(
        pageTitle: "Sign-In",
        fTextBoxTitle: 'E-mail',
        sTextBoxTitle: 'Phone-number',
        signWhere: 'Sign-up now',
        question: "Don't have an account ?",
        imagePath: 'Images/bg-image.jpg');
  }
}
