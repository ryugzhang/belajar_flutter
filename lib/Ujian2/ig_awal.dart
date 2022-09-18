import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IGAwal extends StatefulWidget {
  const IGAwal({Key? key}) : super(key: key);

  @override
  State<IGAwal> createState() => _IGAwalState();
}

class _IGAwalState extends State<IGAwal> {
  String urlPanda = "https://www.meme-arsenal.com/memes/90110b69ea4453451de87702ba449231.jpg";
  List<String> nama = ["Ceng Jelek", "Gocenk Jelek", "Iceng Jelek"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
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
          height: 135,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              fotoKecil(urlPanda, nama[0]),
              fotoKecil(urlPanda, nama[1]),
              fotoKecil(urlPanda, nama[2]),
              fotoKecil(urlPanda, nama[0]),
              fotoKecil(urlPanda, nama[1]),
              fotoKecil(urlPanda, nama[2]),
              fotoKecil(urlPanda, nama[0]),
            ],
          ),
        ),

        Divider(height: 1, thickness: 1,),
        SizedBox(height: 5,),

        itemFoto(urlPanda, nama[0]),
        itemFoto(urlPanda, nama[1]),
        itemFoto(urlPanda, nama[2]),

      ],
    );
  }
}


Padding fotoKecil (String url, String nama){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        Container(
          width: 80,
          height: 80,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100)
          ),
          child: Image.network(url,
            fit: BoxFit.cover,),
        ),
        SizedBox(height: 5,),
        Text(nama)
      ],
    ),
  );
}

Column itemFoto(String url, String nama){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Column(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Image.network(url,
                          fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 5,),
                    ],
                  ),
                ),
                Text(nama),
              ],
            ),
            Icon(MdiIcons.dotsVertical),
          ],
        ),
      ),

      Container(
          height: 370,
          child: Image.network(url, fit: BoxFit.cover,)
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(MdiIcons.cardsHeartOutline, size: 30,),
                SizedBox(width: 17,),
                Icon(MdiIcons.chatProcessingOutline, size: 30,),
                SizedBox(width: 17,),
                Icon(MdiIcons.send, size: 30,),
                SizedBox(width: 17,),
              ],
            ),
            Icon(MdiIcons.bookmarkOutline, size: 30,),
          ],
        ),
      ),

      Container(
        padding: EdgeInsets.only(left: 10),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("10 likes", style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 7,),
            Text(nama, style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            Text("kemarin adalah misteri, besok adalah anugerah, tapi hari ini adalah sejarah."),
            Row(
              children: [
                Text("2 days ago", style: TextStyle(color: Colors.grey, fontSize: 12),),
                Icon(MdiIcons.circleSmall),
                Text("See translation", style: TextStyle(fontSize: 12),),
              ],
            ),
            Divider(),
          ],
        ),
      )
    ],
  );
}