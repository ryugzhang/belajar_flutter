import 'package:belajar/widgets/kartu_nama.dart';
import 'package:flutter/material.dart';

class HalamanKedua extends StatefulWidget {
  const HalamanKedua({Key? key}) : super(key: key);

  @override
  State<HalamanKedua> createState() => _HalamanKeduaState();
}

class _HalamanKeduaState extends State<HalamanKedua> {
  List<String> daftar_nama = [
    "Cindy", "Julian", "Albert", "Freeza", "Renald"
  ];
  List<String> daftar_waktu = [
    "15 Oktober 2022",
    "22 Oktober 2022",
    "23 Oktober 2022",
    "24 Oktober 2022",
    "25 Oktober 2022",
    "26 Oktober 2022",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Daftar Riwayat Transaksi", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for(var i = 0; i < daftar_nama.length; i++) KartuTransaksi(
                nama: daftar_nama[i],
                waktu: daftar_waktu[i],
              ),
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 200,
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              for(var i = 0; i < daftar_nama.length; i++) KartuTransaksi(
                nama: daftar_nama[i],
                waktu: daftar_waktu[i],
              ),
            ],
          ),
        ),

      ],

    );
  }
}
