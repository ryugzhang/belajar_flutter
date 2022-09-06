
import 'package:belajar/Ujian/edit_profil.dart';
import 'package:flutter/material.dart';
import 'package:belajar/data_statis.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  String tempat_lahir = "Jambi";
  String tanggal_lahir = "08 Juli 2010";
  String sekolah = "SMP Sariputra";
  String hobi = "Makan dan Tidur";
  String sembunyikan_data_sekolah = "Sembunyikan Data Sekolah";
  bool status_tampil = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDCF9E2),
      appBar: AppBar(
        title: Text("Profil"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                width: 390,
                margin: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 0),
                padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => HalamanEditProfil()
                        ));
                      },
                      child: Row(
                        children: [
                          Container(
                              width: 60,
                              height: 60,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150)
                              ),
                              child: Image.asset("assets/Karma.png", fit: BoxFit.cover,)
                          ),
                          Text("$nama", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 21),
                      child: Text("Profil", style: TextStyle(fontWeight: FontWeight.bold,color : Colors.blue),),
                    ),
                    pembatas_biru,

                    jarakDinamis(20),
                    labelProfil("Nama Lengkap"),
                    labelData(nama_lengkap),
                    pembatas,

                    jarak,
                    labelProfil("Tempat, Tanggal Lahir"),
                    labelData("$tempat_lahir, $tanggal_lahir"),
                    pembatas,

                    jarak,
                    labelProfil("Umur"),
                    labelData("$umur tahun"),
                    pembatas,

                    if(status_tampil) jarak,
                    if(status_tampil) labelProfil("Sekolah"),
                    if(status_tampil) labelData(sekolah),
                    if(status_tampil) pembatas,

                    if(status_tampil) jarak,
                    if(status_tampil) labelProfil("Kelas"),
                    if(status_tampil) labelData(kelas),
                    if(status_tampil) pembatas,

                    jarak,
                    labelProfil("Hobi"),
                    labelData(hobi),
                    pembatas,


                    jarakDinamis(20),
                    jarakDinamis(100),
                    GestureDetector(
                      onTap: (){
                        setState((){
                          if (status_tampil){
                            sembunyikan_data_sekolah = "Tampilkan Data Sekolah";
                            status_tampil = false;
                          }else{
                            sembunyikan_data_sekolah = "Sembunyikan Data Sekolah";
                            status_tampil = true;
                          }
                        });
                      },
                      child: Text(sembunyikan_data_sekolah, style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20
                      ),),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
            ),
          ],
        ),
      ),
    );
  }
}
