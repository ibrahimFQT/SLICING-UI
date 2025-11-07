import 'package:flutter/material.dart';

class Kartukaimn extends StatelessWidget {
  final Widget icon;
  final String text;
  const Kartukaimn({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Text(
          text,
          style: 
          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}