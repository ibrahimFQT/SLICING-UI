import 'package:flutter/material.dart';

class Halaman extends StatelessWidget {
    const Halaman({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container( 
                        width: 100, height: 12,
                        decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(4)),
                      ),
                      SizedBox(height: 6),
                      Container( 
                        width: 150, height: 8,
                        decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(width: 25, height: 25, decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle)),
                      SizedBox(width: 8),
                      Container(width: 25, height: 25, decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle)),
                      SizedBox(width: 8),
                      Container(width: 25, height: 25, decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(width: 80, height: 12, decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(4))),
                      SizedBox(height: 6),
                      Container(width: 120, height: 8, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),
                    ],
                  ),
                  Row(
                    children: [
                      Container(width: 20, height: 20, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),
                      SizedBox(width: 8),
                      Container(width: 20, height: 20, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),
                      SizedBox(width: 8),
                      Container(width: 20, height: 20, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),
                      SizedBox(width: 8),
                      Container(width: 20, height: 20, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),
                      SizedBox(width: 15),
                      Container(width: 20, height: 20, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(children: [Container(width: 45, height: 45, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(8))),  SizedBox(height: 8), Container(width: 30, height: 8, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),],),
                  Column(children: [Container(width: 45, height: 45, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(8))),  SizedBox(height: 8), Container(width: 30, height: 8, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),],),
                  Column(children: [Container(width: 45, height: 45, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(8))),  SizedBox(height: 8), Container(width: 30, height: 8, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),],),
                  Column(children: [Container(width: 45, height: 45, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(8))),  SizedBox(height: 8), Container(width: 30, height: 8, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),],),
                  Column(children: [Container(width: 45, height: 45, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(8))),  SizedBox(height: 8), Container(width: 30, height: 8, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),],),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(children: [Container(width: 45, height: 45, decoration: BoxDecoration(color: Colors.blueGrey, shape: BoxShape.circle)),  SizedBox(height: 8), Container(width: 30, height: 8, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),],),
                  Column(children: [Container(width: 45, height: 45, decoration: BoxDecoration(color: Colors.blueGrey, shape: BoxShape.circle)),  SizedBox(height: 8), Container(width: 30, height: 8, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),],),
                  Column(children: [Container(width: 45, height: 45, decoration: BoxDecoration(color: Colors.blueGrey, shape: BoxShape.circle)),  SizedBox(height: 8), Container(width: 30, height: 8, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),],),
                  Column(children: [Container(width: 45, height: 45, decoration: BoxDecoration(color: Colors.blueGrey, shape: BoxShape.circle)),  SizedBox(height: 8), Container(width: 30, height: 8, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),],),
                  Column(children: [Container(width: 45, height: 45, decoration: BoxDecoration(color: Colors.blueGrey, shape: BoxShape.circle)),  SizedBox(height: 8), Container(width: 30, height: 8, decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(4))),],),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container( 
                    width: 150, height: 12,
                    decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(4)),
                  ),
                  Container( 
                    width: 60, height: 30,
                    decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(15)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), 
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration:  BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Color(0xFFE0E0E0), width: 1)),
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: Center(child: Container(width: 30, height: 30, decoration: BoxDecoration(color: Color(0xFFBDBDBD), shape: BoxShape.circle)))),
            Expanded(child: Center(child: Container(width: 30, height: 30, decoration: BoxDecoration(color: Color(0xFFBDBDBD), shape: BoxShape.circle)))),
            Expanded(child: Center(child: Container(width: 30, height: 30, decoration: BoxDecoration(color: Color(0xFFBDBDBD), shape: BoxShape.circle)))),
            Expanded(child: Center(child: Container(width: 30, height: 30, decoration: BoxDecoration(color: Color(0xFFBDBDBD), shape: BoxShape.circle)))),
            Expanded(child: Center(child: Container(width: 30, height: 30, decoration: BoxDecoration(color: Color(0xFFBDBDBD), shape: BoxShape.circle)))),
          ],
        ),
      ),
    );
  }
}