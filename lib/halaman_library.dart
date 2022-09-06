import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HalamanLibrary extends StatefulWidget {
  const HalamanLibrary({Key? key}) : super(key: key);

  @override
  State<HalamanLibrary> createState() => _HalamanLibraryState();
}

class _HalamanLibraryState extends State<HalamanLibrary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Text("Halaman Library"),

              Icon(Icons.add_card),
              Icon(MdiIcons.infinity),
              Icon(MdiIcons.apple, color: Colors.indigo, size: 50,),
              Icon(MdiIcons.android, color: Colors.green,),

              Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blueAccent,
                  ),
                  child: Icon(MdiIcons.facebook, color: Colors.white,),
              ),

              Html(
                data: """
                <h1>HTML di Flutter</h1>
                <p style="color: #2233dd">Halo</p>
                <ul>
                <li>ricel</li>
                <li>ricel jelek</li>
                <li>ricel junior</li>
                </ul>
                """,
              ),

              Text("Kunjungi website rahasia :"),

              ElevatedButton(
                  onPressed: (){
                    launch("https://preview.redd.it/8sa9xsnbn0i71.jpg?width=640&crop=smart&auto=webp&s=5306f600a45f5d0fd369a48070c141dd14e0df4e");
                  },
                  child: Text("Buka Website"),
              ),

              Container(
                height: 600,
                width: 380,
                child: WebView(
                  initialUrl: "https://preview.redd.it/8sa9xsnbn0i71.jpg?width=640&crop=smart&auto=webp&s=5306f600a45f5d0fd369a48070c141dd14e0df4e",
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
