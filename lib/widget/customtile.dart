import 'package:flutter/material.dart';

class Customtile extends StatelessWidget {
  Customtile({required this.title, required this.value, super.key});
  String title;
  String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          value.toUpperCase(),
          style: const TextStyle(fontSize: 18, color: Colors.blue),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
