import 'package:flutter/material.dart';
import 'package:registration_form/presentation/resources/theme_manager.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    ThemeManager themeManager = ThemeManager();
    return InkWell(
        onTap: () => print('me'),
        child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(path),
            backgroundColor: themeManager.circleColor));
  }
}
