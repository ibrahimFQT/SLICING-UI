// splashscreen.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Import package Lottie
import 'package:slicing_ui/halaman/page1.dart'; // Sesuaikan dengan path Page1 Anda

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
          builder: (context) => const Page1(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lottie/loading_anim.json', 
              width: 250,
              height: 250,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 10),
            const Text(
              "Memuat Aplikasi...",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent
              ),
            ),
          ],
        ),
      ),
    );
  }
}