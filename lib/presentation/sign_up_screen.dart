import 'package:flutter/material.dart';
import 'package:registration_form/presentation/custom_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  static const route = 'signUp';
  @override
  Widget build(BuildContext context) {
    return const CustomPage(
        pageTitle: 'Sign-up',
        fTextBoxTitle: 'Username',
        sTextBoxTitle: 'Confirm Password',
        signWhere: 'Sign-in now',
        question: 'Already have an account ?',
        imagePath: 'Images/bgimage2.jpg');
  }
}
