import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// FIX: import file yang benar
import 'package:slicing_ui5/decoration/set.dart';
import 'package:slicing_ui5/komponen/cari.dart';
import 'package:slicing_ui5/komponen/card.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    final double tinggi = MediaQuery.of(context).size.height;
    final double lebar = MediaQuery.of(context).size.width;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: lebar,
          height: tinggi * 0.3,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [ClassName.color1, ClassName.color5],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Alamat Kirim", style: ClassName.style6),
              Row(
                children: [
                  Text("Pondok", style: ClassName.style1),
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                    decoration: BoxDecoration(
                      color: ClassName.color5,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "utama",
                        style: GoogleFonts.openSans(
                          fontSize: 8,
                          color: ClassName.color1,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_drop_down),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chat_bubble,
                      color: ClassName.color5,
                      size: 20,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: ClassName.color5,
                      size: 20,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_bag,
                      color: ClassName.color5,
                      size: 20,
                    ),
                  ),
                ],
              ),
              Text(
                "Perumahan Eco Village, Serpong Mekar Sa..",
                style: ClassName.style5,
              ),
              SizedBox(height: 15),
              Cari(),
            ],
          ),
        ),
        Positioned(
          top: 160,
          left: 20,
          right: 20,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ClassName.color2, ClassName.color5],
              ),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: ClassName.color5),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 192, 191, 191),
                  blurRadius: 2,
                  offset: Offset(1, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 5, top: 5, right: 5),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(13, 10, 13, 3),
                    child: Row(
                      children: [
                        Text("Hai, David", style: ClassName.style2),
                        Spacer(),
                        Text("Newbie Member", style: ClassName.style2),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Card01(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
