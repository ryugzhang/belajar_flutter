import 'package:belajar/widgets/kartu_nama.dart';
import 'package:flutter/material.dart';

class HalamanPertama extends StatefulWidget {
  const HalamanPertama({Key? key}) : super(key: key);

  @override
  State<HalamanPertama> createState() => _HalamanPertamaState();
}

class _HalamanPertamaState extends State<HalamanPertama> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Daftar Anggota", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),

        SizedBox(height: 30,),

        Container(
          height: 450,
          child: ListView(
            children: [
              KartuNama(
                name: "Rychelle Trita",
                study: "Chemistry",
                fictionStory: "I love chemistry since I was born, "
                    "when I was little I played with fire every day, "
                    "until I burned down my school. I apologized to them,"
                    "but they never forgave me. The End.",
                urlProfil: "https://awsimages.detik.net.id/community/media/visual/2021/04/30/disaster-girl.png?w=700&q=90",
              ),

              KartuNama(
                name: "Jonathan Ferguso",
                study: "Computer Science",
                fictionStory: "Nothing. My life is flat.",
                urlProfil: "https://i.imgflip.com/2ueh5q.jpg",
              ),

              KartuNama(
                name: "Alucard",
                study: "Fighter",
                fictionStory: "Hey, hey Not bad",
                urlProfil: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNr0eOOm0Eht-P-CFkZEvNOrDWW3k7i1XK_g&usqp=CAU",
              ),

              KartuNama(
                name: "Snow White",
                study: "Princess",
                fictionStory: "Snow is blue, Sky is white",
                urlProfil: "https://i.pinimg.com/originals/90/17/90/90179040646618e45b1c95fbccf3c9a2.jpg",
              ),KartuNama(
                name: "Snow White",
                study: "Princess",
                fictionStory: "Snow is blue, Sky is white",
                urlProfil: "https://i.pinimg.com/originals/90/17/90/90179040646618e45b1c95fbccf3c9a2.jpg",
              ),KartuNama(
                name: "Snow White",
                study: "Princess",
                fictionStory: "Snow is blue, Sky is white",
                urlProfil: "https://i.pinimg.com/originals/90/17/90/90179040646618e45b1c95fbccf3c9a2.jpg",
              ),KartuNama(
                name: "Snow White",
                study: "Princess",
                fictionStory: "Snow is blue, Sky is white",
                urlProfil: "https://i.pinimg.com/originals/90/17/90/90179040646618e45b1c95fbccf3c9a2.jpg",
              ),KartuNama(
                name: "Snow White",
                study: "Princess",
                fictionStory: "Snow is blue, Sky is white",
                urlProfil: "https://i.pinimg.com/originals/90/17/90/90179040646618e45b1c95fbccf3c9a2.jpg",
              ),

            ],
          ),
        ),

      ],
    );
  }
}
