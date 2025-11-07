import 'package:flutter/material.dart';
import 'package:slicing_ui3/komponen/buttonmn.dart';

class Menuatas extends StatelessWidget {
  const Menuatas({super.key});

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Row(
    //     children: [
    //       Column( 
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text("selamat pagi", style: TextStyle(fontSize: 15, ),),
    //           Text("Fulan Bin Fulan", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
    //         ],
    //       ),
    //       SizedBox(width: 5),
    //       IconButton(
    //         onPressed: () {}, 
    //         icon: Icon(Icons.home),
    //       ),
    //     ],
    //   ),
    // );
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Selamat Pagi", style: TextStyle(color: Colors.white),),
              Text("Ibrahim Ganzz", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              Buttonmn(icon: Icons.home_rounded),
              Buttonmn(icon: Icons.email_sharp),
            ],
          ),
        ],
      ),
    );
  }
}