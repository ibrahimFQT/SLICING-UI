import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui5/decoration/set.dart';

class Flash extends StatelessWidget {
  const Flash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // FIX no.1
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
      decoration: BoxDecoration(color: ClassName.color3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Flash Sale",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 15),

          // FIX no.2 scroll horizontal stabil
          SizedBox(
            height: 220, 
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  sale(),
                  SizedBox(width: 10),
                  sale(),
                  SizedBox(width: 10),
                  sale(),
                  SizedBox(width: 10),
                  sale(),
                  SizedBox(width: 10),
                  sale(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class sale extends StatelessWidget {
  const sale({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ClassName.color5,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          // FIX no.3 gambar dikunci rapi
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/beras.png",
              height: 80,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            height: 15,
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: ClassName.color1,
              borderRadius: BorderRadius.circular(10), // FIX no.4
            ),
            child: Center(
              child: Text(
                "nasi pulen 100 gram",
                style: GoogleFonts.openSans(
                  fontSize: 8,
                  color: ClassName.color5,
                ),
              ),
            ),
          ),

          Text(
            "nasi pulen enak di makan",
            style: GoogleFonts.openSans(fontSize: 8),
          ),
          Text(
            "karya anak bangsa",
            style: GoogleFonts.openSans(fontSize: 8),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Rp. 20.000,-",
              style: GoogleFonts.openSans(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Text(
            "produk asli",
            style: GoogleFonts.openSans(
              fontSize: 6,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
