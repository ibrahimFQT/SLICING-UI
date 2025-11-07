import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicing_ui3/komponen/mnkereta.dart';

class Mnitem extends StatelessWidget {
  const Mnitem({super.key});

  @override
  Widget build(BuildContext context) {
    final gradientWarna = [Colors.red, Colors.redAccent];

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Mnkereta(
            icon: const Icon(LucideIcons.hotel, color: Colors.white),
            text: "Hotel",
            warna: gradientWarna,
          ),
          Mnkereta(
            icon: const Icon(LucideIcons.creditCard, color: Colors.white),
            text: "Kartu",
            warna: gradientWarna,
          ),
          Mnkereta(
            icon: const Icon(LucideIcons.gift, color: Colors.white),
            text: "Logistik",
            warna: gradientWarna,
          ),
          Mnkereta(
            icon: const Icon(LucideIcons.circleEllipsis, color: Colors.white),
            text: "Lainnya",
            warna: gradientWarna,
          ),
        ],
      ),
    );
  }
}
