import 'package:flutter/material.dart';
import 'komponen/pilihan.dart';

class SlidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slide Banner'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 200,
              child: PageView(
                children: [
                  Image.asset('assets/banner1.png', fit: BoxFit.cover),
                  Image.asset('assets/banner2.png', fit: BoxFit.cover),
                  Image.asset('assets/banner3.png', fit: BoxFit.cover),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Pilihan(
                    image: 'assets/apel.png', 
                    text: 'buah & sayur'
                  ),
                ),
                Flexible(
                  child: Pilihan(
                    image: 'assets/jusjeruk.png', 
                    text: 'minuman'
                    ),
                  ),
                Flexible(
                  child: Pilihan(
                    image: 'assets/burger.jpg', 
                    text: 'fast food'
                  ),
                ),
                Flexible(
                  child: Pilihan(
                    image: 'assets/kinderjoy.png', 
                    text: 'promo terus')),
                Flexible(
                  child: Pilihan(
                    image: 'assets/buahsayur.png', 
                    text: 'beli + point'
                  ),
              ),
              ],
            )
          ],
        ),
      ),
    );
  }
}