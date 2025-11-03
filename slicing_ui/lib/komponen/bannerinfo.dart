import 'package:flutter/material.dart';

class Bannerinfo extends StatelessWidget {
  final String banner;

  const Bannerinfo({
    super.key,
    required this.banner, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.pinkAccent,
          image: DecorationImage(
            image: AssetImage(banner), 
          ),
        ),
      ),
    );
  }
}