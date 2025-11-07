import 'package:flutter/material.dart';

class Banner1 extends StatelessWidget {
  const Banner1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15), 
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 200,
              width: 470,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image:  DecorationImage(
                  image: AssetImage("banner1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            SizedBox(width: 10), 
            
            Container(
              height: 200,
              width: 470,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image:  DecorationImage( 
                  image: AssetImage("banner-2.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            SizedBox(width: 10), 
            
            Container(
              height: 200,
              width: 470,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage( 
                  image: AssetImage("banner3.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}