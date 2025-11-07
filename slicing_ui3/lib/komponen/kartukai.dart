import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicing_ui3/komponen/kartukaimn.dart';

class Kartukai extends StatelessWidget {
  const Kartukai({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -40,
      right: 20,
      left: 20,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.red.withOpacity(0.5),
              blurRadius: 3,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "KAUPAYS.png",
                        height: 40,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Rp 280.000,00",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                          ),
                          Icon(LucideIcons.chevronRight, size: 18),
                        ],
                      ),
                    ],
                  ),
                ),
                
                 SizedBox(width: 15),
                 SizedBox(
                  height: 60,
                  child: VerticalDivider(thickness: 1, color: Colors.redAccent)
                ),
                SizedBox(width: 15),

                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Kartukaimn(
                        icon: Icon(LucideIcons.scanLine, color: Colors.redAccent, size: 25), 
                        text: "Scan",
                      ),
                      Kartukaimn(
                        icon: Icon(LucideIcons.wallet, color: Colors.redAccent, size: 25), 
                        text: "Top Up",
                      ),
                      Kartukaimn(
                        icon: Icon(LucideIcons.history, color: Colors.redAccent, size: 25), 
                        text: "History",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 5),
            Divider(thickness: 0.8, height: 20, color: Colors.redAccent),
            Row(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.monetization_on, color: Colors.amber[600]),
                    SizedBox(width: 5),
                    Text("0", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.amber[800])),
                    SizedBox(width: 5),
                    Text("RailPoin", style: TextStyle(fontSize: 14)),
                  ],
                ),
                
                Spacer(),

                Container(
                  padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Row(
                    children: [
                      Icon(Icons.star_border_outlined, size: 18, color: Colors.red, weight: 10,),
                      SizedBox(width: 5),
                      Text("basic", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
                      Icon(LucideIcons.chevronRight, size: 15, color: Colors.redAccent),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}