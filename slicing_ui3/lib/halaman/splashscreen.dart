import 'dart:async';
import 'package:flutter/material.dart';
import 'package:slicing_ui3/halaman/homepage.dart'; 

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Homepage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: -50,
            left: -50,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -80,
            right: -80,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.08),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.9),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                    child: const Image(
                      image: AssetImage('abyan.png'), 
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover, 
                    ),
                  ),
                const SizedBox(height: 30), 
                const Text(
                  'Sistem Tiket Cepat', 
                  style: TextStyle(
                    color: Color.fromARGB(255, 150, 31, 22), 
                    fontSize: 28, 
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2, 
                    shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.black38,
                        offset: Offset(1.3, 1.3),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Melaju Bersama Inovasi', 
                  style: TextStyle(
                    color: Color.fromARGB(255, 141, 33, 25), 
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 60), 
                const SizedBox(
                  width: 30, 
                  height: 30,
                  child: CircularProgressIndicator(
                    strokeWidth: 3, 
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.red), 
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}