import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IGAkun extends StatefulWidget {
  const IGAkun({Key? key}) : super(key: key);

  @override
  State<IGAkun> createState() => _IGAkunState();
}

class _IGAkunState extends State<IGAkun> {
  String urlPanda = "https://www.meme-arsenal.com/memes/90110b69ea4453451de87702ba449231.jpg";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("PandaGanz", style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  fontFamily: "IG"
              ),),
              Row(
                children: [
                  Icon(MdiIcons.cardsHeartOutline, size: 30,),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(MdiIcons.menu, size: 30,)
                ],
              ),
            ],
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 65,
                height: 65,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Image.network(urlPanda,
                  fit: BoxFit.cover,),
              ),

              Column(
                children: [
                  Text("7", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                  Text("Posts"),

                ],
              ),
              Column(
                children: [
                  Text("88888888", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                  Text("Followers"),

                ],
              ),
              Column(
                children: [
                  Text("8", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                  Text("Following"),

                ],
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Text("PandaGanz", style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 10),
                  child: Text("Edit profile", style: TextStyle(fontWeight: FontWeight.bold),),
                )
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Icon(MdiIcons.accountPlusOutline),
                )
            ),
          ],
        ),
      ],
    );
  }
}
