import 'package:flutter/material.dart';

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
            backgroundColor: const Color.fromARGB(255, 199, 226, 240)));
  }
}
