import 'package:flutter/material.dart';

// void namaFungsi(String namaParameter){
//   print("ok");
// }

Row itemMateri(context, String namaHalaman, dynamic halaman){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(namaHalaman),
      ElevatedButton(
        child: Text("Buka"),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => halaman
          ));
        },
      ),
    ],
  );
}

//agar bisa digunakan berkali kali
Text judulMenu(String judul){
  return Text(judul, style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.teal,
    fontFamily: "IbarraRealNova",
  ),);
}

Column daftarText(
    String data,
    { String nama = "", String kelas = "" }
    ){
  return Column(
    children: [
      Text(data),
      Text(nama),
      Text(kelas),
    ],
  );
}
