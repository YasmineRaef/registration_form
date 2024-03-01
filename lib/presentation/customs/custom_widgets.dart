import 'package:flutter/material.dart';
import 'package:registration_form/presentation/customs/adding_users_and_verifying.dart';
import 'package:registration_form/presentation/resources/theme_manager.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => print('me'),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(path),
          backgroundColor: const Color.fromARGB(255, 199, 226, 240),
        ));
  }
}

Widget textFormField(String hintText) {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          decoration: AppTheme.inputDecoration(hintText),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Empty Field';
            } else {
              return Validator.checker(hintText, value);
            }
          }));
}
