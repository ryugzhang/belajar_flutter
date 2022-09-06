import 'package:belajar/Ujian2/ig_awal.dart';
import 'package:flutter/material.dart';

class IGHome extends StatefulWidget {
  const IGHome({Key? key}) : super(key: key);

  @override
  State<IGHome> createState() => _IGHomeState();
}

class _IGHomeState extends State<IGHome> {
  List<dynamic> daftar_widget = [
    IGAwal(),
    Divider(thickness: 3,),
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
    );
  }
}
