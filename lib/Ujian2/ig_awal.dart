import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IGAwal extends StatefulWidget {
  const IGAwal({Key? key}) : super(key: key);

  @override
  State<IGAwal> createState() => _IGAwalState();
}

class _IGAwalState extends State<IGAwal> {
  String urlPanda = "https://i.pinimg.com/originals/94/a8/a2/94a8a2b14ae0e4be1963fcff0b758cfd.jpg";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Instagram", style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
                fontFamily: "IG"
              ),),
              Row(
                children: [
                  Icon(MdiIcons.plusBoxOutline, size: 30,),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(MdiIcons.cardsHeartOutline, size: 30,),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(MdiIcons.chatProcessingOutline, size: 30,)
                ],
              ),
            ],
          ),
        ),

        SizedBox(
          height: 5,
        ),
        
        Container(
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              fotoKecil(urlPanda),
              fotoKecil(urlPanda),
              fotoKecil(urlPanda),
              fotoKecil(urlPanda),
              fotoKecil(urlPanda),
              fotoKecil(urlPanda),
              fotoKecil(urlPanda),
              fotoKecil(urlPanda),
            ],
          ),
        )
      ],
    );
  }
}


Padding fotoKecil (String url){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Container(
      width: 80,
      height: 60,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100)
      ),
      child: Image.network(url,
        fit: BoxFit.cover,),
    ),
  );
}