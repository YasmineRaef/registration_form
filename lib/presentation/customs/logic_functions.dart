import 'package:flutter/material.dart';
import 'package:registration_form/presentation/customs/adding_users_and_verifying.dart';

late String emailValue;
late String passValue;

class LogicFunctions {
  static onButtonChange(String value, String hintText) {
    //on changed of textFormField
    if (hintText == 'Password') {
      passValue = value;
    }
    if (hintText == 'E-mail') {
      emailValue = value;
    }
  }

  //on pressed of signing button
  static onButtonPress(GlobalKey<FormState> formField, String currentPage,
      BuildContext context) {
    if (formField.currentState!.validate()) {
      if (currentPage == 'Sign-up') {
        if (checkEmail(emailValue)) {
          print('Account exists..try another e-mail');
        } else {
          storeUsers(emailValue, passValue);
        }
      } else if (currentPage == 'Sign-In') {
        if (checkInputs(emailValue, passValue) == true) {
          Navigator.pushReplacementNamed(context, 'home');
          print('validated');
        } else {
          print('Sign-Up first please!');
          print("your entered value is: $emailValue");
          print("your entered value is: $passValue");
        }
      }
      for (var user in userCredentials) {
        print(user);
      }
    } else {
      print('invalid');
    }
  }
}
