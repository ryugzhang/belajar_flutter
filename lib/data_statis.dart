
import 'package:flutter/material.dart';

String nama = "Ryu";
String kelas = "E3";
String nama_lengkap = "Ryu Gyaltsen Zhang";
int umur = 14;

SizedBox jarak = SizedBox(height: 10,);

SizedBox jarakDinamis(double jarak_yang_diinginkan){
  return SizedBox(height: jarak_yang_diinginkan,);
}

Text labelProfil(String label){
  return Text(label,
    style: TextStyle(
      fontWeight: FontWeight.bold, fontSize: 18
    ),
  );
}

Text labelData(String data){
  return Text(data,
    style: TextStyle(
      fontSize: 13, color: Colors.grey
    ),
  );
}

TextStyle tulisanPutih = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold
);

void pindahHalaman(dynamic halaman, BuildContext context){
  Navigator.push(context, MaterialPageRoute(
      builder: (context) => halaman
  ));
}

Divider pembatas = Divider(color: Colors.grey, thickness: 0.75,);
Divider pembatas_biru = Divider(color: Colors.blue, thickness: 2,);