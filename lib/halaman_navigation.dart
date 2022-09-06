import 'package:belajar/halaman_1.dart';
import 'package:belajar/halaman_2.dart';
import 'package:belajar/halaman_3.dart';
import 'package:flutter/material.dart';

class HalamanNavigation extends StatefulWidget {
  const HalamanNavigation({Key? key}) : super(key: key);

  @override
  State<HalamanNavigation> createState() => _HalamanNavigationState();
}

class _HalamanNavigationState extends State<HalamanNavigation> {
  List<dynamic> daftar_widget = [
    HalamanPertama(),
    HalamanKedua(),
    HalamanKetiga(),
    Divider(thickness: 3,),
  ];

  int nomor_halaman = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20,),
                daftar_widget[nomor_halaman],
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(top: 15,bottom: 15),
            color: Colors.blue.withOpacity(0.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      nomor_halaman= 0;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: (nomor_halaman == 0) ? Colors.white : Colors.black,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(color: (nomor_halaman == 0) ? Colors.white : Colors.black,),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      nomor_halaman= 1;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                  Icons.access_time_rounded,
                  color: (nomor_halaman == 1) ? Colors.white : Colors.black,
                      ),
                      Text("Riwayat",
                        style: TextStyle(color: (nomor_halaman == 0) ? Colors.white : Colors.black,),),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      nomor_halaman= 2;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.settings,
                        color: (nomor_halaman == 2) ? Colors.white : Colors.black,
                      ),
                      Text("Pengaturan",
                        style: TextStyle(color: (nomor_halaman == 0) ? Colors.white : Colors.black,),),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
