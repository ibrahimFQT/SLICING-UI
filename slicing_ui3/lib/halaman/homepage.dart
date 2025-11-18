import 'package:flutter/material.dart';
import 'package:slicing_ui3/komponen/banner.dart';
import 'package:slicing_ui3/komponen/kartukai.dart';
import 'package:slicing_ui3/komponen/menuatas.dart';
import 'package:slicing_ui3/komponen/mnitem.dart';
import 'package:slicing_ui3/komponen/mnkereta.dart';
import 'package:slicing_ui3/komponen/trip.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFFF3D00),Color(0xFFFF80AB)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    image: DecorationImage(
                      image: AssetImage("stasiun.jpeg"),
                      fit: BoxFit.cover,
                      opacity: 0.2,
                    ),
                  ),
                  child:  Menuatas(),
                ),
                 Kartukai(),
              ],
            ),
             SizedBox(height: 90),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 16,
                  children:  [
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 40, color: Colors.white),
                      text: "Antar Kota",
                      warna: [Colors.blue, Colors.lightBlueAccent],
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 40, color: Colors.white),
                      text: "Lokal",
                      warna: [Colors.green, Colors.tealAccent],
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 40, color: Colors.white),
                      text: "Commuter",
                      warna: [Colors.purple, Colors.pinkAccent],
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 40, color: Colors.white),
                      text: "LRT",
                      warna: [Colors.orange, Colors.deepOrangeAccent],
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 40, color: Colors.white),
                      text: "Bandara",
                      warna: [Colors.red, Colors.pink],
                    ),
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 40, color: Colors.white),
                      text: "Woosh",
                      warna: [Colors.teal, Colors.cyanAccent],
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(height: 50),
             Center(child: Mnitem()),
             SizedBox(height: 30),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12),
              child:  Trip(),
            ),
             SizedBox(height: 30),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    "Promo Terbaru",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.redAccent),
                  ),
                  Container(
                    padding:  EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1.5, color: Colors.redAccent),
                      color: Colors.blueAccent.withOpacity(0.1),
                    ),
                    child:  Text(
                      "Lihat Semua",
                      style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Banner1(),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
