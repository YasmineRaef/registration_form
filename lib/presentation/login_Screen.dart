import 'package:flutter/material.dart';
import 'package:registration_form/presentation/custom_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 0.9),
        appBar: AppBar(
          title: const Center(child: Text('CYBER WEB')),
          backgroundColor: const Color.fromARGB(255, 31, 0, 117),
        ),
        body: const SingleChildScrollView(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
              Stack(children: [
                Image(
                  image: AssetImage('Images/bg-image.jpg'),
                ),
                Column(children: [
                  SizedBox(height: 50),
                  Text(
                    'Your port to a new world 😎',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  CustomTextField(
                      label: 'E-mail', hintText: 'enter your e-mail'),
                  CustomTextField(
                      label: 'Password', hintText: 'enter your password'),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(text: 'Log-in'),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Or Continue with ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.all(40),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomCircleAvatar(path: 'Images/microsoft-logo.png'),
                        SizedBox(width: 50),
                        CustomCircleAvatar(path: 'Images/Apple-logo-solid.png'),
                        SizedBox(width: 50),
                        CustomCircleAvatar(path: 'Images/google-logo.png'),
                      ],
                    ),
                  ),
                  Text(
                    "Don't have an account ?",
                    style: TextStyle(
                        color: Color.fromARGB(255, 244, 234, 234),
                        fontSize: 20),
                  ),
                  InkWell(
                      child: Text(
                    'Sign-up now',
                    style: TextStyle(
                        color: Color.fromARGB(255, 137, 247, 3),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        decoration: TextDecoration.underline),
                  ))
                ])
              ])
            ]))));
  }
}
