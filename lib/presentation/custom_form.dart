import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:registration_form/presentation/resources/theme_manager.dart';
import 'package:string_validator/string_validator.dart';

class CustomForm extends StatelessWidget {
  CustomForm(
      {super.key,
      required this.firstTextField,
      required this.secondTextField,
      required this.labelButton});

  final String firstTextField;
  final String secondTextField;
  final String labelButton;
  final formField = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    ThemeManager themeManager = ThemeManager();
    return Form(
        key: formField,
        child: Column(children: [
          for (int i = 0; i < 3; i++) ...[
            textFormField(parameters[i]),
            const Gap(20),
          ],
          SizedBox(
              height: 50,
              width: 150,
              child: TextButton(
                  style: themeManager.signingButton,
                  child: Text(labelButton, style: themeManager.buttonLabel),
                  onPressed: () {
                    if (formField.currentState!.validate()) {
                      print('validated');
                      Navigator.pushReplacementNamed(context, 'home');
                    } else {
                      print('invalid');
                    }
                  }))
        ]));
  }

  // late --> to wait until the variables are given ...
  late List<String> parameters = [firstTextField, 'Password', secondTextField];
}

Widget textFormField(String hintText) {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          decoration: ThemeManager.inputDecoration(hintText),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Empty Field';
            } else {
              String correctPass = '';
              String email = '';
              String confirmedPass = '';
              switch (hintText) {
                case 'E-mail' || 'Username':
                  email = value;
                  if (!isEmail(value)) {
                    return 'invalid email .. ex: __@sth.com';
                  }
                case 'Password':
                  correctPass = value;
                  if (value.length < 6) {
                    return 'password must be more than 6 characters';
                  }
                  if (!value.contains(RegExp(r'[A-Z]'))) {
                    return 'Add at least one capital letter';
                  }
                  if (!value.contains(RegExp(r'[a-z]'))) {
                    return 'Add at least one lowercase letter';
                  }
                  if (!value.contains(RegExp(r'[0-9]'))) {
                    return 'A digit is required';
                  }
                  if (!value.contains(RegExp('[!@#%^&*_?<>~,.\$"]'))) {
                    return 'Special character required';
                  }
                case 'Confirm Password':
                  if (value != correctPass) {
                    return 'Incorrect Password';
                  } else {
                    confirmedPass = value;
                  }
                case 'Phone-number':
                  if (value.length != 11 || !isNumeric(value)) {
                    return 'Invalid phone number';
                  }
              }
            }
          }));
}
