import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class Trip extends StatelessWidget {
  const Trip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Color(0xFFFF80AB), 
            Color(0xFFFF3D00), 
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: const [ 
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white.withOpacity(0.15),
            ),
            child:  Icon(
              LucideIcons.shipWheel,
              size: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                "Trip Perjalanan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                "Rencanakan Perjalanan",
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
              Text(
                "Terbaikmu",
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1.5, color: Colors.white), 
              color: Colors.white.withOpacity(0.15),
            ),
            child:  Text(
              "Buat",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}