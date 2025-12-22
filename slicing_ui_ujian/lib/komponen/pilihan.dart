import 'package:flutter/material.dart';

class Pilihan extends StatelessWidget {
  final String image;
  final String text;

  const Pilihan({Key? key, required this.image, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle, 
            color: Colors.grey[400],
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover, 
            ),
          ),
        ),
        Text(text),
      ],
    );
  }
}
