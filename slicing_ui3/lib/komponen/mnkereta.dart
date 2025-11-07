import 'package:flutter/material.dart';
class Mnkereta extends StatelessWidget {
  final String text;
  final Widget icon;
  final List<Color> warna; // gradient
  const Mnkereta({super.key, required this.icon, required this.text, required this.warna});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: warna,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Center(child: icon),
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}