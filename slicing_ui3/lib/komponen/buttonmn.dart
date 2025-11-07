import 'package:flutter/material.dart';

class Buttonmn extends StatelessWidget {
  final IconData icon;
  const Buttonmn({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.8),
            ),
            child: IconButton(
              onPressed: () {}, 
              icon: Icon(icon, color: Colors.redAccent,),
            ),
          );
  }
}