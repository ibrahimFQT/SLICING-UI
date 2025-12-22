import 'package:flutter/material.dart';
import 'package:slicing_ui5/decoration/set.dart';
import 'package:slicing_ui5/komponen/appbar.dart';
import 'package:slicing_ui5/komponen/cari.dart';
import 'package:slicing_ui5/komponen/menuapps.dart';
import 'package:slicing_ui5/komponen/flashsale.dart'; // pastikan nama file sesuai
import 'package:slicing_ui5/komponen/card.dart';      // kalau ada

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClassName.color3,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // APP BAR
            Appbar(),

            SizedBox(height: 20),
          

            // SEARCH
            Cari(),

            SizedBox(height: 20),

            // MENU
            Menuapps(),

            SizedBox(height: 20),

            // FLASHSALE
            Flash(),

            SizedBox(height: 20),

            Card(),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
