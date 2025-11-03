import 'package:flutter/material.dart';
import 'package:slicing_ui/komponen/komponenui2.dart';

class Saldoapp extends StatelessWidget {
  const Saldoapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 2)],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        // **HAPUS SingleChildScrollView AGAR KONTEN TIDAK OVERFLOW PADA UKURAN TERTENTU**
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Mengatur jarak antar item utama
          children: [
            // 1. KONTEN KIRI (Wallet & Saldo/Coin)
            Row(
              children: [
                SizedBox(
                  height: 50,
                  child: Image.asset('assets/wallet.png'),
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start, // Ditambahkan agar teks rata kiri di Column
                  children: const [
                    Text("Rp 550.000", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("1000 coin", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min, 
              children: const [

                Flexible(child: Komponenui2(logo: 'assets/arrow.png', text: "Bayar")),
                SizedBox(width: 10),
                Flexible(child: Komponenui2(logo: 'assets/plus.png', text: "Top Up")),
                SizedBox(width: 10),
                Flexible(child: Komponenui2(logo: 'assets/more.png', text: "lainnya")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}