  import 'package:flutter/material.dart';

  class Menuapp extends StatelessWidget {
    const Menuapp({super.key});

    @override
    Widget build(BuildContext context) {
      return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 6,
              offset: const Offset(2, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Image.asset(
            'assets/man.png', 
            fit: BoxFit.contain,
            height: 45,
          ),
        ),
      );
    }
  }
