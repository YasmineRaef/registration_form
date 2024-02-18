import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 0, 57, 86))),
                  child: Text(labelButton,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 16)),
                  onPressed: () {
                    if (formField.currentState!.validate()) {
                      print('validated');
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
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8),
              hintText: hintText,
              hintStyle: const TextStyle(color: Color.fromARGB(255, 0, 57, 86)),
              fillColor: Colors.blueGrey[200],
              filled: true,
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade500))),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Empty Field';
            } else {
              switch (hintText) {
                case 'E-mail' || 'Username':
                  if (!isEmail(value)) {
                    return 'invalid email .. ex: __@sth.com';
                  }
                case 'Password':
                  if (value.length < 8) {
                    return 'password must at least contain 8 characters';
                  }
                case 'Phone-number':
                  if (value.length != 11 || !isNumeric(value)) {
                    return 'Invalid phone number';
                  }
                //The case of conforming the password is missing,
                //where the value entered in password must be equal
                //to that in confirm password
              }
            }
          }));
}
