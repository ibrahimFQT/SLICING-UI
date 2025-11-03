import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui/komponen/bannerinfo.dart';
import 'package:slicing_ui/komponen/komponenui1.dart';
import 'package:slicing_ui/komponen/saldoapp.dart';
import 'package:slicing_ui/komponen/menuapp.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: 330, 
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFF80AB),
                  Color(0xFFFFCDD2),
                  Colors.white,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Mau makan apa hari ini?",
                          hintStyle: GoogleFonts.poppins(
                            color: Colors.grey[500],
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: Icon(
                        Icons.person,
                        color: Colors.pinkAccent,
                        size: 28,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Text(
                            "Menu Favorit, sendiri atau barengan",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 5
                                ..color = Colors.pinkAccent,
                            ),
                          ),
                          Text(
                            "Menu Favorit, sendiri atau barengan",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 110, 
                      width: 110,
                      child: Image.asset(
                        'assets/fast food.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Flexible(
                      child: KomponenUI1(
                        logo: 'assets/apple.png',
                        text: "Buah2-an",
                      ),
                    ),
                    Flexible(
                      child: KomponenUI1(
                        logo: 'assets/burger.png',
                        text: "Cepat Saji",
                      ),
                    ),
                    Flexible(
                      child: KomponenUI1(
                        logo: 'assets/orange-juice.png',
                        text: "Minum2-an",
                      ),
                    ),
                    Flexible(
                      child: KomponenUI1(
                        logo: 'assets/vegetables.png',
                        text: "Sayur2-an",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              child: Saldoapp(),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Menuapp(),
                    Menuapp(),
                    Menuapp(),
                    Menuapp(),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Menuapp(),
                    Menuapp(),
                    Menuapp(),
                    Menuapp(),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Promo Hari Ini!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded( 
            child: PageView(
              children: const [
                Bannerinfo(banner: "assets/Group 12 (1).png"),
                Bannerinfo(banner: "assets/Group 12 .png"),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 30,
                child: Image.asset("assets/shopping-bag.png"),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 30,
                child: Image.asset("assets/promo.png"),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 30,
                child: Image.asset("assets/chat.png"),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 30,
                child: Image.asset("assets/home.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}