import 'package:flutter/material.dart';
import 'package:belajar/widgets/items.dart';

class HalamanState extends StatefulWidget {
  const HalamanState({Key? key}) : super(key: key);

  @override
  State<HalamanState> createState() => _HalamanStateState();
}

class _HalamanStateState extends State<HalamanState> {
  // property
  String tulisan = "LAMA";
  int nilai = 0;

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(tulisan),
              Text(nilai.toString()),

              ElevatedButton(
                onPressed: (){
                  setState(() {
                    if(tulisan == "LAMA"){
                      tulisan = "BARU";
                    }else{
                      tulisan = "LAMA";
                    }
                  });
                },
                child: Text("Ubah Text"),
              ),


              Divider(),

              daftarText(
                "Halo",
                nama: "Richel",
                kelas: "8",
              ),


            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            nilai += 100;
          });
        },
        backgroundColor: Colors.orangeAccent,
        child: Icon(Icons.add),
      ),
    );
  }
}