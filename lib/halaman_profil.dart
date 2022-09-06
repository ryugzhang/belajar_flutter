import 'package:flutter/material.dart';

class  HalamanProfil extends StatelessWidget {
  const HalamanProfil ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Profil"),
      ),
      body: SafeArea(
        child: Column(
          // start=rata kiri, end=rata kanan, center=rata tengah
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: EdgeInsets.only(bottom: 20, left: 10),
              child: Text("Halaman Profil"),
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: Text("Selamat datang di profil"),
            ),

            ElevatedButton(
              // named parameter tidak berpengaruh terhadap urutan
                onPressed: (){
                  print("TES");
                },
                child: Text("Lihat"),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white, // == color
                  primary: Colors.teal, // == backgroundcolor
                ),
            ),

            Column(
              children: [
                Text("Andi"),
                Text("17 Tahun"),
                Text("SMP N 1 Jakarta"),
              ],
            ),

            Divider(),

            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Row(
                children: [
                  Text("Andi"),
                  Text("17 Tahun"),
                  Text("SMP N 1 Jakarta"),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nama", style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      Text("Kelas"),
                      Text("Sekolah"),
                    ],
                  ),

                  Divider(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Alex", style: TextStyle(
                        color: Colors.blueAccent
                      ),),
                      Text("Z8"),
                      Text("Xaverius 1", style: TextStyle(
                        backgroundColor: Colors.amber,
                        fontStyle: FontStyle.italic
                      ),),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Alek", style: TextStyle(
                          color: Colors.blueAccent
                      ),),
                      Text("Z3"),
                      Text("Xaverius 1", style: TextStyle(
                          backgroundColor: Colors.amber,
                          fontStyle: FontStyle.italic
                      ),),
                    ],
                  )

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
