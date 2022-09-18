import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IGSearch extends StatefulWidget {
  const IGSearch({Key? key}) : super(key: key);

  @override
  State<IGSearch> createState() => _IGSearchState();
}

class _IGSearchState extends State<IGSearch> {
  String urlPanda = "https://www.meme-arsenal.com/memes/90110b69ea4453451de87702ba449231.jpg";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(MdiIcons.arrowLeft),
              ),

              Container(
                width: 340,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(width: 0, style: BorderStyle.none)
                    ),
                    hintText: "Search",
                  ),
                  style: TextStyle(fontSize: 14),
                ),
              ),

            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recent", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),),
              Text("See all", style: TextStyle(color: Colors.blueAccent),),
            ],
          ),
        ),
        
        Row(
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
            SizedBox(width: 10,),
          ],
        ),

      ],
    );
  }
}
