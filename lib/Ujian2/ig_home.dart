import 'package:belajar/Ujian2/ig_akun.dart';
import 'package:belajar/Ujian2/ig_awal.dart';
import 'package:belajar/Ujian2/ig_search.dart';
import 'package:belajar/Ujian2/ig_shop.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IGHome extends StatefulWidget {
  const IGHome({Key? key}) : super(key: key);

  @override
  State<IGHome> createState() => _IGHomeState();
}

class _IGHomeState extends State<IGHome> {
  String urlPanda = "https://www.meme-arsenal.com/memes/90110b69ea4453451de87702ba449231.jpg";

  List<dynamic> daftar_widget = [
    IGAwal(),
    IGSearch(),
    Center(child: Text("Reels Skip"),),
    IGShop(),
    IGAkun(),
  ];

  int nomor_halaman = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              daftar_widget[nomor_halaman],
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(thickness: 1, height: 2,),
          Container(
            padding: EdgeInsets.only(top: 15,bottom: 15),
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
                        color: Colors.black,
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
                        Icons.search,
                        color: Colors.black,
                      ),
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
                      Icon(MdiIcons.clipboardPlay,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      nomor_halaman= 3;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        MdiIcons.cartOutline,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      nomor_halaman= 4;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Image.network(urlPanda,
                          fit: BoxFit.cover,),
                      ),
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
