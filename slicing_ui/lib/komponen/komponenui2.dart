import 'package:flutter/material.dart';

class Komponenui2 extends StatelessWidget {
  final String logo;
  final String text;
  const Komponenui2({super.key, required this.logo, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30,
          child: Image.asset(logo), 
        ),
         SizedBox(height: 4), 
        Text(
          text,
          style: TextStyle(fontSize: 12), 
        ),
      ],
    );
  }
}