  import 'package:flutter/material.dart';

  class KomponenUI1 extends StatelessWidget {
    final String logo;
    final String text;
    final Color borderColor;
    final Color backgroundColor;

    const KomponenUI1({
      super.key,
      required this.logo,
      required this.text,
      this.borderColor = Colors.red,
      this.backgroundColor = Colors.white,
    });

    @override
    Widget build(BuildContext context) {
      return Container(
        height: 75,
        width: 80,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: borderColor, width: 2.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              child: Image.asset(logo),
            ),
            const SizedBox(height: 4),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 11, 
              ),
            ),
          ],
        ),
      );
    }
  }
